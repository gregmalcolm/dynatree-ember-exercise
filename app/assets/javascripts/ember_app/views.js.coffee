EmberApp = window.EmberApp

EmberApp.DynatreeView = Ember.View.extend
  tagName: 'div'
  classNames: 'items-tree'
  didInsertElement: ->
    console.log @$().dynatree()
