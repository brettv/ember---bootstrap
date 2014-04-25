class App.WelcomeController extends Ember.ObjectController

  showModal: false

  actions:
    showInPageModal: ->
      @showModal = true
