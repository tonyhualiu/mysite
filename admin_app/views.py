import bottle
from bottle import route, template, static_file
from admin_app import admin_app

BASE_PATH = './admin_app/static/'
MY_NAME = 'tony'
bottle.TEMPLATE_PATH.insert(0, './admin_app/templates/')

@admin_app.route('/home')
def home():
    return template('admin_home.tpl')

##### Static Routes #####
@admin_app.route('/<fileName:re:.*\.html>')
def html(fileName):
    return static_file(fileName, root = BASE_PATH)
@admin_app.route('/<fileName:re:plugins.*>')
def plugins(fileName):
    print fileName
    return static_file(fileName, root = BASE_PATH)

@admin_app.route('/<fileName:re:ajax.*>')
def ajax(fileName):
    return static_file(fileName, root = BASE_PATH)

@admin_app.route('/<fileName:re:.*\.js>')
def javascripts(fileName):
    return static_file(fileName, root= BASE_PATH)

@admin_app.route('/<fileName:re:.*\.css>')
def stylesheets(fileName):
    print fileName
    return static_file(fileName, root= BASE_PATH)

@admin_app.route('/<fileName:re:.*\.(jpg|png|gif|ico)>')
def images(fileName):
    return static_file(fileName, root= BASE_PATH)

@admin_app.route('/<fileName:re:.*\.(eot|ttf|woff|svg)>')
def fonts(fileName):
    return static_file(fileName, root= BASE_PATH)

