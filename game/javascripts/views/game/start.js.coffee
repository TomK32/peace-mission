window.Peacemission.Views.Game ||= {}

class Peacemission.Views.Game.Start extends Backbone.View
  el: '#game'
  template: JST["templates/game/start"]
  events:
    "click #start": "start"

  initialize: () ->
    @.render()

  render: ->
    $(@.el).html(@.template)
    @

  start: () ->
    $(@.el).html('')
    name = $('input[name="player_name"]').val()
    name = prompt("What is your name?") while name == ''

    window.game = new Peacemission.Models.Game
      player: new Peacemission.Models.Player({name: name})
    new Peacemission.Views.Game.Main