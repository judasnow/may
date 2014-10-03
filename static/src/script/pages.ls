
# 执行页面的切换 以及管理

define [], ->

  class Pages

    _pages-cons: {}
    _pages-obj: {}

    (pages-cons) ->
      @_pages-cons = pages-cons

    _gc: ->
      console.log \will_do_gc

    _free: (page-name) ->
      console.dir "will free #{page-name}"

    show: (page-name) ->
      if page-name in @_pages-obj
      then
        @_pages-obj[page-name].render!
      else
        try
          @_pages-obj[page-name] = new @_pages-cons[page-name][0] do
            el: @_pages-cons[page-name][1]
          @_pages-obj[page-name].render!
        catch
          console.dir e


