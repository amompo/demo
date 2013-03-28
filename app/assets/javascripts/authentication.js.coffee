App.AuthenticationRequiredMixin = Ember.Mixin.create
  redirect: ->
    unless App.get("user")
      @transitionTo("login")

App.WidgetRoute = Ember.Route.extend App.AuthenticationRequiredMixin,
  model: (params) ->
    App.Widget.find(params.widget_id)