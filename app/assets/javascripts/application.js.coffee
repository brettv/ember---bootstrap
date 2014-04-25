# Libraries

#= require jquery
#= require bootstrap
#= require handlebars
#= require ember
#= require ember-data


# Ember App

#= require_self
#= require      ./store
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./components
#= require_tree ./templates
#= require_tree ./routes
#= require      ./router

window.App = Ember.Application.create()