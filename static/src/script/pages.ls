
# 执行页面的切换 以及管理

define [], ->

  class Pages
    # 页面构造器的集合
    _pages-cons: {}

    # 已经初始化的页面的容器
    _pages-map: {}

    (pages-cons) ->
      @_pages-cons = pages-cons

    _gc: ->
      console.log \do_gc

    load: (page-name) ->
      if page-name in @_pages-map
      then
        @_pages-map[page-name].init!
      else
        try
          @_pages-map[page-name] = new @_pages-cons[page-name][0] do
            el: @_pages-cons[page-name][1]
          @_pages-map[page-name].init!
        catch
          console.dir e


/*
  # howto
  # 顶层 app 对象
  admin_panel.changePage do
    # 没有发生改变的就可以不写
    # 不为空的部分就会被新元素 render 之后替代
    # 在 render 没有完成之前显示 loading
    header: ""
    footer: ""
    nav: ""
    main: basicInfoView
*/


