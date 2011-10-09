class window.Peacemission.Models.Game extends Backbone.Model
  defaults:
    version: '0'

  initialize: (options) ->
    @actors = new Peacemission.Collections.Actors
    @player = new Peacemission.Models.Player
    @issues = new Peacemission.Collections.Issues
    @view = options.view

  create_actor: (args) ->
    actor = new Peacemission.Models.Actor(args)
    @actors.add actor
    return actor
