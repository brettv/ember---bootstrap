
App.Router.map ->
  @route 'welcome'
  @resource 'about', ->
    @route 'tab1'
    @route 'tab2'
