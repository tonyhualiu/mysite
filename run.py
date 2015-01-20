from app import app
from app import views

if __name__ == '__main__':
    app.run(host = '192.168.0.17', port = 5000, debug = True)
