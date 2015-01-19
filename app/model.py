from sqlalchemy import create_engine, Column, Integer, String, DateTime
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

__db = 'mysql'
__user = 'root'
__password = 'baiyang600801'
__host = 'localhost'
__port = '3306'
__dbname = 'mysite'

__url = '{}://{}:{}@{}:{}/{}'.format(__db, __user, __password,
            __host, __port, __dbname)

__BASE = declarative_base()
engine = create_engine(__url)
Session = sessionmaker()
Session.configure(bind = engine)
class Test(__BASE):
    __tablename__ = 'Test'

    id = Column('testID', Integer, primary_key = True)
    time = Column('time', DateTime)
    shortString = Column('string', String)
    longString = Column('string2', String)

    def __repr__(self):
        return '<(Test(id = "%s", time = "%s", shortString = "%s", longString = "%s")>' % (self.id, self.time, self.shortString, self.longString)
