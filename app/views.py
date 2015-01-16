from app import app
import bottle
from bottle import static_file

BASE_PATH = './app/static/theme/'
MY_NAME = 'tony'
bottle.TEMPLATE_PATH.insert(0, './app/templates/')
static_file = bottle.static_file
template = bottle.template

@app.route('/hello')
def hello():
    return 'Hello World'


##### Static Routes #####
@app.route('/<fileName:re:.*\.html>')
def html(fileName):
    return static_file(fileName, root = BASE_PATH)
@app.route('/<fileName:re:.*\.js>')
def javascripts(fileName):
    return static_file(fileName, root= BASE_PATH)

@app.route('/<fileName:re:.*\.css>')
def stylesheets(fileName):
    return static_file(fileName, root= BASE_PATH)

@app.route('/<fileName:re:.*\.(jpg|png|gif|ico)>')
def images(fileName):
    return static_file(fileName, root= BASE_PATH)

@app.route('/<fileName:re:.*\.(eot|ttf|woff|svg)>')
def fonts(fileName):
    return static_file(fileName, root= BASE_PATH)

@app.route('/')
@app.route('/index')
def index():
    return template('index.tpl', name = MY_NAME)

