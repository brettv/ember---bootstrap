class App.IndexRoute extends Ember.Route
  beforeModel: ->
    @transitionTo 'welcome'