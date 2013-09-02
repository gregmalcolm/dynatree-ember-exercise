EmberApp = window.EmberApp

EmberApp.Item = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  folder: DS.attr 'boolean'
  hidden: DS.attr 'boolean'
  readOnly: DS.attr 'boolean'

EmberApp.Item.FIXTURES = [
  {
    id: 1
    name: "apps"
    description: "This is where we keep the cool stuff"
    folder: true
    hidden: false
    readOnly: true
  }
  {
    id: 2
    name: "config"
    description: "Configure stuff"
    folder: true
    hidden: false
    readOnly: false
  }
  {
    id: 3
    name: "README.rst"
    description: "Read the furry manual"
    folder: false
    hidden: false
    readOnly: false
  }
  {
    id: 4
    name: "assets"
    description: "Pipetastic"
    folder: true
    hidden: false
    readOnly: false
  }
  {
    id: 5
    name: "application.js"
    description: "What's this doing here?"
    folder: false
    hidden: true
    readOnly: true
  }
]

