EmberApp.Item = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  folder: DS.attr 'boolean'
  hidden: DS.attr 'boolean'
  readOnly: DS.attr 'boolean'
