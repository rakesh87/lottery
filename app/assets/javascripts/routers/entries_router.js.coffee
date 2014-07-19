class Lottery.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  index: ->
    @collection = new Lottery.Collections.Entries()
    @collection.fetch
      success: (collection) ->
        view = new Lottery.Views.EntriesIndex(collection: collection)
        $('#container').html(view.render().el)

  show: (id) ->
    alert "show me Id #{id}"
