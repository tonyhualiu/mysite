from app import app
import bottle, json
from bottle import static_file, template, request
from model import Session, Test, Project

BASE_PATH = './app/static/theme/'
MY_NAME = 'tony'
bottle.TEMPLATE_PATH.insert(0, './app/templates/')

@app.route('/hello')
def hello():
    return 'Hello World'
@app.route('/dbtest')
def dbTest():
    session = Session() 
    result = [t for t in session.query(Test)]
    return str(result)

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

@app.route('/<fileName:re:.*\.(JPG|jpg|png|gif|ico)>')
def images(fileName):
    print fileName
    if fileName.startswith('uploads'):
        return static_file(fileName, root = './app/static/')
    return static_file(fileName, root= BASE_PATH)


@app.route('/<fileName:re:.*\.(eot|ttf|woff|svg)>')
def fonts(fileName):
    return static_file(fileName, root= BASE_PATH)

##### Customerized Routes #####
@app.route('/')
@app.route('/index')
def index():
    return template('index.tpl', name = MY_NAME)

@app.route('/artist')
def dancer():
    # when embed video in your website, you have to change the youtube video url
    # from watch?v={id} to embed/{id}
    video1 = {'url':'https://www.youtube.com/embed/RarwTz3VVak','description':'test'}
    videos = [video1]
    return template('dancer.tpl', name = MY_NAME, videos = videos)

@app.route('/developer')
def developer():
    session = Session()
    projects = [p for p in session.query(Project)]
    return template('developer.tpl', name = MY_NAME, projects = projects)

@app.route('/blog')
def blog():
    return template('blog.tpl', name = MY_NAME)

##### REST API #####
@app.route('/auth', method = ['POST'])
def admin():
    __username = 'tony'
    __password = 'baiyang600801'
    print request
    token = request.json
    if token['username'] == __username and token['password'] == __password:
        return json.dumps({'login': True})
    return json.dumps({'login': False})

@app.route('/projects/<ID:int>')
def showProject(ID):
    session = Session()
    project = session.query(Project).filter(Project.id == ID).first()
    return template('project.tpl', project = project) 
