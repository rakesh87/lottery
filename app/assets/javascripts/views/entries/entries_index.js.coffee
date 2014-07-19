class Lottery.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new_form': "createEntry"

  initialize: ->
    @collection.on('add', @render, this)
    @collection.fetch
      success: (collection) ->
        @render()

  render: ->
    $(@el).html(@template())
    @collection.each(@appendEntry)
    this

  appendEntry: (entry) ->
    view = new Lottery.Views.Entry(model: entry)
    $('#entries').append(view.render().el)


  createEntry: (e)->
    e.preventDefault()
    alert($('#new_entry_name').val())
