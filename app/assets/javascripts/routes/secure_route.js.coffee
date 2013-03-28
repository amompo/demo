Ember.SecureRoute = Ember.Route.extend({
  role: null,

  redirect: function (model) {
    if (!this.controllerFor('login').get('authenticated')) {
        this._routeToLogin();
    }

    var role = this.get('role');
    if (!Ember.isEmpty(role) && !this.controllerFor('login').hasRole(role)) {
        this._routeToLogin();
    } 
  },

  _routeToLogin: function () {
    var infos = this.get('router.router.currentHandlerInfos');

    this.router.router.didTransition(infos);

    var routeName = !this.router.router.hasRoute(this.routeName) ? this.routeName + '.index' : this.routeName;
    var params =    infos.filter(function (item, index, enumerable) { return item.context !== undefined; }).map(function (item) { return item.context; })
    var url =       Ember.Router.prototype.generate.apply(this.router, params.insertAt(0, routeName))
    this.router.location.setURL(url);

    this.transitionTo("login");
  }
});

# http://stackoverflow.com/questions/15543297/ensure-user-login-in-ember-app?lq=1
# App.DatasetEditRoute = Ember.Route.extend({
#   redirect: function() {
#     if (this.controllerFor('currentUser').get('isSignedIn') === false) {
#       this.transitionTo('user.login');
#     }
#   }
# });