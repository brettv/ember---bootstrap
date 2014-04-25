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


# This nify little bit of code will automatically initialize any bootstap
# tooltips added to the DOM.  This is perfect for an Ember environment where
# we don't have page loads and instead parts of the page are selectively
# rendered and unrendered.
$ ->
  $('body').tooltip
    selector: '[data-toggle=tooltip]'
    

window.App = Ember.Application.create()