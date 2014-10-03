# 详细配置

define [
  "jquery"
  "underscore"
  "backbone"
  "mustache"

  "text!template/admin/main_panel/detail_info.mustache"
],
(
  $
  _
  Backbone
  Mustache

  tpl
) ->

  DetailInfoView = Backbone.View.extend do

    template: tpl

    events: do
      "click .submit": "_submit"

    initialize: ->
      _.bindAll @, \_submit
      @render!

    render: ->
      @$el.html <| Mustache .render @template

    _submit: ->
      alert \submiting



