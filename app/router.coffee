App = require 'app'
debug = require('debug') 'DEBUG router'

#App.Route = Em.Router.extend
#  rootUrl: '/'
#  enableLogging: true
#  location: 'history'

App.Router.map (match) ->
  match('/').to('home')

  #App.HomeRoute = Em.Route.extend
  #setupControllers: (controller) ->
    #  App.store.findQuery(App.Company, q: App.CurrentQuery.query)
    #controller.set('companies', App.CurrentQuery.result)
    #App.store.findQuery(App.Company, q: ))

App.ProfileRoute = Em.Route.extend
  setupControllers: (controller) ->
    controller.set('content', App.CurrentUser)
