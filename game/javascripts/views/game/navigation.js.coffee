window.Peacemission.Views.Game ||= {}

class Peacemission.Views.Game.Navigation extends Backbone.View
  el: '#navigation'
  template: JST["templates/game/navigation"]

  initialize: () ->
    @.render()

  render: ->
    $(@.el).html(@.template)
    @
