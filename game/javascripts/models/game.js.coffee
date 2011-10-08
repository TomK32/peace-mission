class window.Peacemission.Models.Game extends Backbone.Model
  defaults:
    version: '0'
    players: []

  initialize: ->
    @actors = new Peacemission.Collections.Actors
    @player = null

  create_actor: (args) ->
    actor = new Peacemission.Models.Actor(args)
    @actors.add actor
    return actor
