from app import app
from admin_app import admin_app
from app import views

if __name__ == '__main__':
    app.mount('/admin', admin_app)
    app.run(host = 'localhost', port = 5000, debug = True)
