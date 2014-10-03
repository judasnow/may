define [
  'jquery'
  'underscore'
  'backbone'

  'ls!pages'
  'ls!app/tweepee/view/home'
], (
  $,
  _,
  Backbone

  Pages
  HomeView
) ->

  TweepeeRoutes = Backbone.Router.extend do

    routes:
      '': '_home_page'
      'new_tweet': '_new_tweet'
      'tweets': '_tweets'
      'tweet/:id': '_tweet'
      'following': '_following'
      'followers': '_followers'

    initialize: ->
      _.bindAll @, '_home_page'
      @_pages = new Pages do
        \home-page : [HomeView, '#pages']

    _home_page: ->
      @_pages.show \home-page


