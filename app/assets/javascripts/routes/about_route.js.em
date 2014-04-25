class App.AboutRoute extends Ember.Route
  
  # This snippet is basically auto selecting "Tab 1" as the default tab on the
  # about page.  Using the redirect hook and its access to the transition
  # object we can see if we are heading to "about.index" (where you would be
  # going if you went to the "about" route.) and redirect to "about.tab1"
  # instead thus selecting Tab 1. We could probably use an AboutIndexRoute
  # with a beforeModal hook (like we did in the IndexRoute) but sometimes its
  # useful to know more than 1 way to do something.
  redirect: (model, transition)->
    if transition.targetName == "about.index"
      @transitionTo "about.tab1"