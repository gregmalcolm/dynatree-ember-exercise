EmberApp = window.EmberApp

EmberApp.ItemController = Ember.ObjectController.extend()

# ItemController must be initialized first
EmberApp.ItemsController = Ember.ArrayController.extend
  needs: "item"
