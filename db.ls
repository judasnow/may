require! orm

db_config =
  database: \may_tweepee
  protocol: \mysql
  host: \127.0.0.1
  user: \root
  password: \123456
  port: \3306
  query:
    pool: true
    debug: true

(err, db) <- orm.connect db_config
  (err) <- db.load './model/base.ls'
  if err
    throw err


