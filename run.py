from app import app
from app import views

if __name__ == '__main__':
    app.run(host = 'localhost', port = 5000, debug = True)
