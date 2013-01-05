# Application bootstrapper

App = Em.Application.create()

# create Ember Data store
App.store = DS.Store.create
  revision: 10
  adapter: DS.RESTAdapter.create()
  #    bulkCommit: false
  #    serializer: DS.JSONSerializer.extend
  #      primaryKey: (type) -> '_id'

# https://github.com/emberjs/data/issues/504
#App.store.adapter.serializer.map 'App.Post', user: {embedded: 'load'}, link: {embedded: 'load'}

#App.store.adapter.serializer.map 'App.Post', user: {embedded: 'load'}, link: {embedded: 'load'}
#console.log App.store.adapter
#App.store.adapter.findQuery = (store, type, query, recordArray) ->
#  #root = this.rootForType(type)
#  url = 'http://localhost:8983/solr/select'
#  params =
#    q: query.q
#    version: '4.0'
#    start: 0
#    rows: 100
#
#  #this.ajax this.buildURL(root), "GET",
#  this.ajax url, "GET",
#    data: params
#    success: (json) ->
#      console.log json
#      Ember.run this, ->
#        this.didFindQuery(store, type, json, recordArray)

module.exports = App
