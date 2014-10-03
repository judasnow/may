# 根据不同的页面加载不同的 app 对象并实例化

define [
  "backbone"
  "ls!app/admin/main_panel/route"
], (
  Backbone
  Routes
) ->

  # @XXX 根据 url 加载相应的 routes 
  # 初始化相应的 app

  window.routes = routes = new Routes!
  Backbone.history.start!


