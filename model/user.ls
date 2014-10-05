
module.exports = (db, cb) ->

  User = db.define "user" do
    usr: String
    pwd: String
    join_date: Date
  , do
    methods:
      show: ->
        console.dir \show

  cb!


