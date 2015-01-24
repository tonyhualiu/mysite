import bottle
from bottle import route, template, static_file, redirect, request
from admin_app import admin_app
from app.model import conn
from model import projects

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
        #projects = getProject()
        #return template()
        pass
    if request.method == 'POST':
        project = request.json
        ins = projects.insert().values(project_id = None,
                                        project_name = project['name'],
                                        project_tag = project['tag'],
                                        project_time = None,
                                        img_url = project['img'],
                                        content = project['content'])
        conn.execute(ins)


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

