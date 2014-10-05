logger = require \koa-logger
route = require \koa-route
parse = require \co-body
views = require \co-views
require! \koa

app = koa!
app.use logger!
render = views do
  __dirname + '/'
  ext: 'ejs'

# controller
home = ->*
  this.body = yield render 'index'

app.use <| route.get '/1/timeline' home

app.listen 8888
