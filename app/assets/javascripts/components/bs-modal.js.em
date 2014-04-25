class App.BsModalComponent extends Ember.Component

  classNames:        ['modal', 'fade', 'obs-modal']
  attributeBindings: ['showing']
  onClose:           'destroyModal'


  # Here we are simply observing the bound property "showing" and telling the
  # modal to show or hide itself based on that value
  +observer showing
  showModal: ->
    if @showing
      @$().modal('show')
    else
      @$().modal('hide')


  didInsertElement: ->

    # We are listening here for the modal going down so we can keep the state
    # of the modal in sync with what the component thinks it is.  Its also a
    # great place to send an action to allow for any needed outside cleanup
    # (such as disconnecting this modal from an outlet).
    @$().on 'hidden.bs.modal', =>
      @showing = false
      @sendAction 'onClose'
    
    # the above observer for showing does not fire when this view is
    # initialized.  Adding the .on('init') option to the observer isn't
    # desirable since it would fire before the DOM has been setup.  So
    # instead, we "initialize" the initial state here.
    @showModal()
  

  # Here we can cleanup any listeners we created in didInsertElement.  Also,
  # we want to allow bootstrap to clean up the model if the modal was removed
  # by ember instead of bootstrap.  A great example of this is simply
  # transitioning to a different route that does not contain the modal.
  willDestroyElement: ->
    @$().off '.bs.modal'

    # If you comment out this line and hit the back button the modal will go
    # away (un-rendered by the transition) but the boostrap overal will remain
    # since bootsrap wasn't given a chance to clean up after itself.
    @$().modal('hide')
