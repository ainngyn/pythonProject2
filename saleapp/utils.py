import json, os
from saleapp import app
from saleapp.models import Category, Product
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
def get_product_by_id(product_id):

    # products = read_json(os.path.join(app.root_path, 'data/products.json'))
    #
    # for p in products:
    #     if p['id'] == product_id:
    #         return p

    return Product.query.get(product_id)