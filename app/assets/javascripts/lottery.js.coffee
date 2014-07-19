window.Lottery =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Lottery.Routers.Entries
    Backbone.history.start()

$(document).ready ->
  Lottery.initialize()
