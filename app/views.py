from app import app
import bottle
from bottle import static_file, template

BASE_PATH = './app/static/theme/'
MY_NAME = 'tony'
bottle.TEMPLATE_PATH.insert(0, './app/templates/')

@app.route('/hello')
def hello():
    return 'Hello World'


##### Static Routes #####
#@app.route('/<fileName:re:.*\.html>')
#def html(fileName):
#return static_file(fileName, root = BASE_PATH)

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

##### Customerized Routes #####
@app.route('/')
@app.route('/index')
def index():
    return template('index.tpl', name = MY_NAME)

@app.route('/dancer')
def dancer():
    # when embed video in your website, you have to change the youtube video url
    # from watch?v={id} to embed/{id}
    video1 = {'url':'https://www.youtube.com/embed/RarwTz3VVak','description':'test'}
    videos = [video1]
    return template('dancer.tpl', name = MY_NAME, videos = videos)

