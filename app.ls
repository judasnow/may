require! http
require! fs
require! url
require! buffer

class May
  (conf) ->
    @conf = conf

root-path = './'

srv = http.createServer (req, res) ->
  (err, data) <- fs.readFile \index.html
  if err
    throw err
  else
    res.setHeader \
    res.end data

srv.listen 8888


