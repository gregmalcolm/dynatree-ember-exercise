EmberApp = window.EmberApp

EmberApp.DynatreeView = Ember.View.extend
  events: []
  attributes: []

  classNames: 'items-tree'
  didInsertElement: ->
    opt = {}
    that = @

    @get('events').forEach ->
      callback = that[event]
      if callback
        opt[event] = callback

    @get('attributes').forEach (attr) ->
      if that[attr]?
        opt[attr] = that[attr]

    @$().dynatree
      initAjax:
        url: "/items/tree.json"
