from saleapp import app, db
from flask_admin import Admin, BaseView, expose, AdminIndexView
from saleapp.models import Category, Product, UserRole
from flask import redirect, request
from flask_admin.contrib.sqla import ModelView
from flask_login import current_user, logout_user
import utils

class AuthenticatedModelView(ModelView):
    def is_accessible(self):
        return current_user.is_authenticated and current_user.user_role.__eq__(UserRole.ADMIN)



class ProductView(AuthenticatedModelView):
    column_display_pk = True
    can_view_details = True
    can_export = True
    column_searchable_list = ['name', 'description']
    column_filters = ['name', 'price']
    column_exclude_list = ['image', 'active', 'created_date']  # khong hien thi cot nay
    column_labels = {
        'name': 'Tên sản phẩm ',
        'description': 'Mô tả',
        'price': 'Giá',
        'image': 'Anh đại diện ',


    }
    column_sortable_list = ['id','name','price']


class LogoutView(BaseView):
    @expose('/')
    def index(selff):

        logout_user()
        return redirect('/admin')
    def is_accessible(self):
        return current_user.is_authenticated


class StatsView(BaseView):
    @expose('/')
    def index(self):
        kw=request.args.get('kw')
        from_date = request.args.get('from_date')
        to_date = request.args.get('to_date')
        return self.render('admin/stats.html',
                           stats = utils.products_stats(kw=kw,
                                                        from_date=from_date,
                                                        to_date=to_date))

    def is_accessible(self):
        return current_user.is_authenticated and current_user.user_role==UserRole.ADMIN


class MyAdminIndex(AdminIndexView):
    @expose('/')
    def index(self):
        return self.render('admin/index.html',
                           stats=utils.category_stats())


admin = Admin(app=app,
              name="E-commerce Administration",
              template_mode='bootstrap4',
              index_view=MyAdminIndex())
admin.add_view(AuthenticatedModelView(Category, db.session))
admin.add_view(ProductView(Product, db.session))
admin.add_view(StatsView(name='Stats'))
admin.add_view(LogoutView(name='Logout'))
