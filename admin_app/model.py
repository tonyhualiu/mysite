from sqlalchemy import Table, Column, Integer, String, DateTime, MetaData

metadata = MetaData()

projects = Table('Projects', metadata,
        Column('project_id', Integer, primary_key = True),
        Column('project_name', String),
        Column('project_tag', String),
        Column('project_time', DateTime),
        Column('img_url', String),
        Column('content', String),
        )

