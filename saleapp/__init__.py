from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

app.secret_key ='c38rcue02im9867T647Y8^$#^&*ub878%$*hip*^$#&ttb'
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root@localhost/prjpython?charset=utf8mb4'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
app.config['PAGE_SIZE'] = 4
db = SQLAlchemy(app=app)