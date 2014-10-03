define [
  "jquery"
  "underscore"
  "backbone"
  "mustache"

  "text!../view/basic_info.ls"
],
(
  $
  _
  Backbone
  Mustache

  BasicInfoView
) ->

  # @XXX ctx 是一个选择符
  class BasicInfoPage

    (ctx) ->
      @_ctx = ctx
      console.log ctx

    _ctx: null

    _views: do
      \basic-info : BasicInfoView

    init: (which) ->
      each ((k, v)-> new v {el: @_ctx}) @_views


