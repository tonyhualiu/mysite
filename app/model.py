from sqlalchemy import create_engine, Column, Integer, String, DateTime
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from ConfigParser import ConfigParser

config = ConfigParser()
config.read('app/config.cfg')
dbSection = 'mysql'
__db = config.get(dbSection, 'db')
__user = config.get(dbSection, 'user')
__password = config.get(dbSection, 'password')
__host = config.get(dbSection, 'host')
__port = config.get(dbSection, 'port')
__dbname = config.get(dbSection, 'dbname')

__url = '{0}://{1}:{2}@{3}:{4}/{5}'.format(__db, __user, __password,
            __host, __port, __dbname)

__BASE = declarative_base()
engine = create_engine(__url)

Session = sessionmaker()
Session.configure(bind = engine)

class Project(__BASE):
    __tablename__ = 'Projects'

    id = Column('project_id', Integer, primary_key = True)
    name = Column('project_name', String)
    tag = Column('project_tag', String)
    time = Column('project_time', DateTime)
    imgURL = Column('img_url', String)
    content = Column('content', String)

    def __repr__(self):
		t = self.time.strftime('%Y/%m/%d')
		return '{id:"%s",name:"%s",tag="%s",time="%s",img_url="%s",content="%s"}' \
				% (str(self.id), self.name, self.tag, t, self.imgURL, self.content)

# Test class to test the functionalities of
# database connection
class Test(__BASE):
    __tablename__ = 'Test'

    id = Column('testID', Integer, primary_key = True)
    time = Column('time', DateTime)
    shortString = Column('string', String)
    longString = Column('string2', String)

    def __repr__(self):
        return '<(Test(id = "%s", time = "%s", shortString = "%s", longString = "%s")>' % (self.id, self.time, self.shortString, self.longString)
