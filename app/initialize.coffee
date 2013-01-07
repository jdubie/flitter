window.App = require 'app'

require 'models'
require 'controllers'
require 'views'
require 'router'
require 'helpers'


##################################################
## Create Query object
##################################################
App.Query = Em.Object.extend
  query: null
  result: (() ->
    q = @get('query')
    unless q
      []
    else
      App.store.findQuery(App.Company, {q})
  ).property('query')

App.CurrentQuery = App.Query.create()


