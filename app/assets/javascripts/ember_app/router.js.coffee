EmberApp = window.EmberApp
EmberApp.Router.map ()->
  @resource 'items', ->
    @resource 'item', { path: ':item_id' }

EmberApp.IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo('items')
