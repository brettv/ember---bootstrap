class App.WelcomeRoute extends Ember.Route
  
  actions:
    # Basically we are rendering the template named "modal" (the first arg)
    # into an outlet named "modal" located in the "application" template.
    showRenderedModal: ->
      @render 'modal',
        into:   'application'
        outlet: 'modal'
    
    # This is how you "undo" what the showRenderedModal action did above.  I
    # would actually recommend placing this action in the ApplicationRoute so
    # it's available everywhere in the app.  Then more specific routes can
    # "override" destroyModal as needed with their own implementations.
    destroyModal: ->
      @disconnectOutlet
        outlet:     'modal'
        parentView: 'application'