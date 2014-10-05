define [
  'jquery'
  'underscore'
  'backbone'

  'ls!pages'
  'ls!app/tweepee/view/home'
  'ls!app/tweepee/view/new_tweet'
  'ls!app/tweepee/view/following'
  'ls!app/tweepee/view/followers'
], (
  $,
  _,
  Backbone

  Pages
  HomeView
  NewTweetView
  FollowingView
  FollowersView
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
        \new-tweet : [NewTweetView, '#pages']
        \following : [FollowingView, '#pages']
        \followers : [FollowersView, '#pages']

    _home_page: ->
      @_pages.show \home-page

    _new_tweet: ->
      @_pages.show \new-tweet

    _following: ->
      @_pages.show \following

    _followers: ->
      @_pages.show \followers


