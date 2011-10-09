window.Peacemission.Views.Game ||= {}

class Peacemission.Views.Game.Main extends Backbone.View
  el: '#game'
  template: JST["templates/game/main"]

  initialize: () ->
    @.render()
    @.navigation = new Peacemission.Views.Game.Navigation()
    # start the game loop

  render: ->
    $(@.el).html(@.template)
    @
