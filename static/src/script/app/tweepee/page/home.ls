define [
  "jquery"
  "underscore"
  "backbone"
  "mustache"
],
(
  $
  _
  Backbone
  Mustache
) ->

  class HomePage

    (ctx) ->
      @_ctx = ctx
      console.log ctx

    _ctx: null
    _views: {}

    init: (which) ->
      each ((k, v)-> new v {el: @_ctx}) @_views


