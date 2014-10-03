define [
  "jquery"
  "underscore"
  "backbone"
  "mustache"

  "text!../tpl/home.mustache"
],
(
  $
  _
  Backbone
  Mustache

  tpl
) ->

  HomeView = Backbone.View.extend do

    template: tpl

    events: do
      "click .submit_all": "_submit_all"

    initialize: ->
      _.bindAll @, \render
      console.log \init_home
      @render!

    render: ->
      @$el.html <| Mustache .render @template


