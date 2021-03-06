define [
  "jquery"
  "underscore"
  "backbone"
  "mustache"

  "text!../tpl/following.mustache"
],
(
  $
  _
  Backbone
  Mustache

  tpl
) ->

  FollowingView = Backbone.View.extend do

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


