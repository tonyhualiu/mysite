from app import app
import bottle
from bottle import static_file

basePath = './app/static/theme/'
name = 'tony'
bottle.TEMPLATE_PATH.insert(0, './app/templates/')
static_file = bottle.static_file
template = bottle.template

@app.route('/hello')
def hello():
    return 'Hello World'


##### Static Routes #####
@app.route('/<filename:re:.*\.html>')
def html(filename):
    return static_file(filename, root = basePath)
@app.route('/<filename:re:.*\.js>')
def javascripts(filename):
    return static_file(filename, root= basePath)

@app.route('/<filename:re:.*\.css>')
def stylesheets(filename):
    return static_file(filename, root= basePath)

@app.route('/<filename:re:.*\.(jpg|png|gif|ico)>')
def images(filename):
    return static_file(filename, root= basePath)

@app.route('/<filename:re:.*\.(eot|ttf|woff|svg)>')
def fonts(filename):
    return static_file(filename, root= basePath)

@app.route('/')
@app.route('/index')
def index():
    print bottle.TEMPLATE_PATH
    return template('index.tpl', name = name)

