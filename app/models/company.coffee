App.Company = DS.Model.extend
  ctime         : DS.attr 'date'
  name          : DS.attr 'string'
  description   : DS.attr 'string'
  small_image_s : DS.attr 'string'
  image         : (() ->
    "//crunchbase.com/#{@get('small_image_s')}"
  ).property('small_image_s')

  #didLoad: () -> console.log 'name', @get('name'), @get('small_image_s')
  #didLoad: () -> console.log 'name', @get('name'), @get('small_image_s')
  #didLoad: () -> console.log 'name', @get('name'), @get('small_image_s')
#App.Company.reopenClass url: 'companie'
