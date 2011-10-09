window.Peacemission.Views.Game ||= {}

class Peacemission.Views.Game.Start extends Backbone.View
  el: '#game'
  template: JST["templates/game/start"]
  events:
    "click #start": "start"

  initialize: ->
    @.render()

  render: ->
    $(@.el).html(@.template)
    @

  start: () ->
    name = @.$('input[name="player_name"]').val() || 'Player'
    window.game = new Peacemission.Models.Game
    game.player = new Peacemission.Models.Player({name: name})
    game.view = new Peacemission.Views.Game.Main
    