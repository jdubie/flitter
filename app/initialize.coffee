window.App = require 'app'

require 'models'
require 'controllers'
require 'views'
require 'router'
require 'helpers'


##################################################
## Create Query object
##################################################
MAX = 20

App.Query = Em.Object.extend
  query: null
  result: (() ->
    q = (@get('query') ? '') + '*'
    lower = @get('lower')
    upper = @get('upper')
    App.store.findQuery(App.Company, {q, lower, upper})
  ).property('query', 'upper', 'lower')
  start: MAX - 3
  end:   MAX
  lower: (() ->
    MAX - @get('start')
  ).property('start')
  upper: (() ->
    MAX - @get('end')
  ).property('end')
  startDisplay: (() ->
    currentYear = (new Date()).getFullYear()
    currentYear - @get('lower')
  ).property('start')
  endDisplay: (() ->
    currentYear = (new Date()).getFullYear()
    currentYear - @get('upper')
  ).property('end')

App.CurrentQuery = App.Query.create()


