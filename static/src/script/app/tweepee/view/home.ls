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
      "click .submit": "_submit"

    initialize: ->
      _.bindAll do
        @
        \render
        \_submit

      @render!

    _submit: ->
      console.log \submit

    render: ->
      @$el.html <| Mustache .render @template


