App.Company = DS.Model.extend
  ctime       : DS.attr 'date'
  name        : DS.attr 'string'
  description : DS.attr 'string'

#App.Company.reopenClass url: 'companie'
