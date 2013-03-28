# http://stackoverflow.com/questions/15416143/ember-js-authentication

APP.LoginController = Ember.Controller.extend
  # other stuff

  authenticate: (username, password) ->
    # do the authentication
    history.go(-1);
