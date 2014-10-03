# 后台管理主页面

define [
  'jquery'
  'underscore'
  'backbone'

  'ls!pages'

  'ls!./page/basic_info'
], (
  $,
  _,
  Backbone

  Pages

  BasicInfoPage
) ->

  # @TODO nav 中要将相应的 item 设置为激活状态

  MainPanelRoutes = Backbone.Router.extend do

    routes:
      "": "_home"
      "home": "_home"

      # 基本信息
      'basic_info': '_basic_info'
      'detail_info': '_detail_info'
      'qq_groups': '_qq_groups'

      # 活动
      # 财务
      # 成员
      # 话题
      # 相册

    initialize: ->
      _.bindAll @, '_home', '_basic_info'

      @pages = new Pages do
        basic_info: [BasicInfoPage, '#page .main']

    _home: ->
      console.log \home

    _basic_info: ->
      @pages.load \basic_info

    _detail_info: ->

    _qq_groups: ->

    _activities: ->
      console.log \activities

    _members: ->
      console.log \member

    _finance: ->
      console.log \finance

    _topics: ->
      console.log \topic

    _photos: ->
      console.log \photos


