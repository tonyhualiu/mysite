from app import app
import bottle, json
from bottle import static_file, template, request
from model import Session, Test, Project

BASE_PATH = './app/static/'
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
@app.route('/<path:re:theme.*>')
def mainTheme(path):
    return static_file(path, root = BASE_PATH)

@app.route('/<path:re:myAlertBox.*>')
def myAlertBox(path):
    return static_file(path, root = BASE_PATH)

@app.route('/<path:re:tools.*>')
def commingSoon(path):
    return static_file(path, root = BASE_PATH)

@app.route('/<path:re:uploads.*>')
def uploads(path):
    return static_file(path, root = BASE_PATH)

@app.route('/resume')
def resume():
    return static_file('resume.pdf', root = BASE_PATH)

@app.route('/favicon.ico')
def icon():
    return static_file('favicon.png', root = './app/')

##### Customerized Routes #####
@app.route('/')
@app.route('/index')
def index():
    return template('index.tpl', name = MY_NAME)

@app.route('/artist')
def dancer():
    # when embed video in your website, you have to change the youtube video url
    # from watch?v={id} to embed/{id}
    video1 = {'url':'https://www.youtube.com/embed/RarwTz3VVak','description':'@UPitts, FRESA'}
    video2 = {'url': "https://www.youtube.com/embed/S6X0HubLFU4", 'description':'CMU 2014 Spring Festival'}
    videos = [video1, video2]
    return template('dancer.tpl', name = MY_NAME, videos = videos)

@app.route('/developer')
def developer():
    session = Session()
    projects = [p for p in session.query(Project)]
    return template('developer.tpl', name = MY_NAME, projects = projects)

@app.route('/blog')
def blog():
    #return template('blog.tpl', name = MY_NAME)
    return template('coming_soon.tpl')

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
