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
      onActivate: (node, event) ->
        key = node.data.key
        if key == 'root'
          that.get('controller').transitionToRoute("items")
        else
          that.get('controller').transitionToRoute("item", key)
