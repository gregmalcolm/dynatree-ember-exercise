EmberApp = window.EmberApp

EmberApp.DynatreeView = Ember.View.extend
  classNames: 'items-tree'
  didInsertElement: ->
    that = @
    that._super()

    that.$().dynatree
      initAjax:
        url: "/items/tree.json"
      onActivate: (node, event) ->
        key = node.data.key
        if key == 'root'
          that.get('controller').transitionToRoute("items")
        else
          that.get('controller').transitionToRoute("item", key)
      clickFolderMode: 1 # Activate, don't expand
      onPostInit: (isReloading, isError) ->
        key = that.get("itemId")
        if key?
          @.activateKey(key)
