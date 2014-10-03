# 基本配置

define [
  "jquery"
  "underscore"
  "backbone"
  "mustache"

  "text!template/admin/main_panel/basic_info.mustache"
],
(
  $
  _
  Backbone
  Mustache

  tpl
) ->

  BasicInfoView = Backbone.View.extend do

    template: tpl

    events: do
      "click .submit_all": "_submit_all"

    initialize: ->
      _.bindAll @, \_submit_all
      @render!

    render: ->
      @$el.html <| Mustache .render @template

    _submit_all: ->
      alert \submit


