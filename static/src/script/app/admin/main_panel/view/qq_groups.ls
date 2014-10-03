# qq 群配置

define [
  "jquery"
  "underscore"
  "backbone"
  "mustache"

  "text!template/admin/main_panel/qq_groups.mustache"
],
(
  $
  _
  Backbone
  Mustache

  tpl
) ->

  QQGroupsView = Backbone.View.extend do

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



