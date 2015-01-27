import bottle
from bottle import route, template, static_file, redirect, request, response
from admin_app import admin_app
from app.model import Session, engine, Project
from model import projects
from datetime import datetime


BASE_PATH = './admin_app/static/'
MY_NAME = 'tony'
bottle.TEMPLATE_PATH.insert(0, './admin_app/templates/')

##### Customized Routes #####
@admin_app.route('/home')
def home():
    return template('admin_home.tpl')

@admin_app.route('/')
def index():
    redirect('./home')

@admin_app.route('/projects/new')
def createProject():
    return template('add_project.tpl')

##### REST API #####
@admin_app.route('/projects', method = ['GET','POST', 'PUT','DELETE'])
def projects_api():
    if request.method == 'GET':
        session = Session()
        response.set_header('Content-Type', 'Application/json')
        return str([str(p) for p in session.query(Project)])
    if request.method == 'POST':
        name = request.forms.get('name')
        tag = request.forms.get('tag')
        time = request.forms.get('date')
        content = request.forms.get('content')
        upload = request.files.get('img')
        
        #time conversion
        date = datetime.strptime(time, '%m/%d/%Y')

        #img upload
        savePath = './app/static/uploads/{}-{}'.format(name, upload.filename)
        upload.save(savePath)

        ins = projects.insert().values(project_id = None,
                                        project_name = name,
                                        project_tag = tag,
                                        project_time = date,
                                        img_url = savePath,
                                        content = content)
        conn.execute(ins)

        redirect('./projects')

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

