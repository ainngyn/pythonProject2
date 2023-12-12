import idlelib.undo
import json, os
from saleapp import app, db
from saleapp.models import Category, Product, User, Receipt, ReceiptDetail, UserRole
from flask_login import current_user
import hashlib
from sqlalchemy import func
from flask import current_app
def read_json(path):
    with open(path,"r") as f:
        return json.load(f)
def load_categories():
    return read_json(os.path.join(app.root_path,'data/categories.json'))

  #  return  Category.query.all()


def load_products(cate_id=None, kw=None, from_price=None, to_price=None,page=1):
    #products =  read_json(os.path.join(app.root_path, 'data/products.json'))
    # if cate_id:
    #     products =[p for p in products if p['category_id'] == int(cate_id)]
    # if kw:
    #     products = [p for p in products if p['name'].lower().find(kw.lower()) >= 0]
    # if from_price:
    #     products = [p for p in products if p['price'] >= float(from_price)]
    # if to_price:
    #     products = [p for p in products if p['price'] <= float(to_price)]
    #
    # return products
    products = Product.query.filter(Product.active.__eq__(True))

    if cate_id:
        products = products.filter(Product.category_id.__eq__(cate_id))
    if kw:
        products = products.filter(Product.name.contains(kw))

    if from_price:
        products = products.filter(Product.price.__ge__(from_price))
    if to_price:
        products = products.filter(Product.price.__le__(to_price))
    page_size = app.config['PAGE_SIZE']
    start = (page - 1) * page_size
    end = start + page_size

    return products.slice(start, end).all()

def count_products():
    return Product.query.filter(Product.active.__eq__(True)).count()

def add_user(name, username, password, **kwargs):
    password =str(hashlib.md5(password.strip().encode('utf-8')).hexdigest())
    user = User(name=name.strip(),
                username=username.strip(),
                password=password,
                email=kwargs.get('email'),
                avatar=kwargs.get('avatar')

                )
    db.session.add(user)
    db.session.commit()

def get_product_by_id(product_id):

    # products = read_json(os.path.join(app.root_path, 'data/products.json'))
    #
    # for p in products:
    #     if p['id'] == product_id:
    #         return p

    return Product.query.get(product_id)

def check_login(username, password, role=UserRole.USER):
    if username and password:
        password = str(hashlib.md5(password.strip().encode('utf-8')).hexdigest())
        return User.query.filter(User.username.__eq__(username.strip()),
                                 User.password.__eq__(password),
                                 User.user_role.__eq__(role)).first()

def get_user_by_id(user_id):
    return User.query.get(user_id)


def count_cart(cart):
    total_quantity, total_amount = 0, 0

    if cart:
        for c in cart.values():
            total_quantity += c['quantity']
            total_amount += c['quantity']*c['price']
    return {
        'total_quantity': total_quantity,
        'total_amount': total_amount
    }



# def category_stats():
#     return Category.query.join(Product, Product.category_id.__eq__(Category.id), isouter=True)\
#         .add_columns(func.count(Product.id))\
#         .group_by(Category.id, Category.name).all()

def category_stats():
    with app.app_context():
        return db.session.query(Category.id, Category.name, func.count(Product.id)) \
            .join(Product, Category.id == Product.category_id, isouter=True) \
            .group_by(Category.id, Category.name).all()


def products_stats(kw=None, from_date=None, to_date =None):
    with app.app_context():
        p = db.session.query(Product.id, Product.name,
                             func.sum(ReceiptDetail.quantity*ReceiptDetail.unit_price))\
                            .join(ReceiptDetail, ReceiptDetail.product_id.__eq__(Product.id),isouter=True)\
                            .join(Receipt,Receipt.id.__eq__(ReceiptDetail.receipt_id))\
                            .group_by(Product.id, Product.name)

        if kw:
            p = p.filter(Product.name.contains(kw))
        if from_date:
            p = p.filter(Receipt.created_date.__eq__(from_date))

        if to_date:
            p = p.filter(Receipt.created_date.__eq__(to_date))


        return p.all()


def add_receipt(cart):
    if cart:
        receipt = Receipt(user=current_user)
        db.session.add(receipt)

        for c in cart.values():
            d = ReceiptDetail(receipt=receipt,
                              product_id=c['id'],
                              quantity=c['quantity'],
                              unit_price=c['price']
                              )
            db.session.add(d)
        db.session.commit()


