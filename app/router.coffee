App = require 'app'
debug = require('debug') 'DEBUG router'

App.Router.map (match) ->
  match('/').to('home')

App.HomeRoute = Em.Route.extend
  renderTemplates: (context) ->
    @render()

    initSlider = () ->
      $("#slider").slider
        range: true
        values: [17,20]
        max: 20
        min: 0
        step: 1
      $("#slider").bind 'slide', (e, ui) ->
        [start, end] = ui.values
        App.CurrentQuery.set('start', start)
        App.CurrentQuery.set('end',   end)

    setTimeout(initSlider, 1)
