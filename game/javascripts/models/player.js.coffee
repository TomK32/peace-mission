class window.Peacemission.Models.Player extends window.Peacemission.Models.Actor
  paramRoot: 'player'

  initialize: ->
    @issues = new Peacemission.Collections.Issues