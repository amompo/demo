# http://stackoverflow.com/questions/15416143/ember-js-authentication

Danrent.ApplicationRoute = Ember.Route.extend
  @route "home", { path: "/" }
  @route "about", { path: "/about" }

  @resource "properties", ->  
    @route('new');
    @route "favorites"

  @route "login"
  @resource "admin", ->
    @route "users"

  @resource "tenant", ->
    @resource "property", ->