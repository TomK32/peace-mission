class window.Peacemission.Models.Actor extends Backbone.Model
  paramRoot: 'actor'

  defaults:
    relations: []
    name: null
    description: null

  relations: ->
    @.attributes.relations

class window.Peacemission.Collections.Actors extends Backbone.Collection
  model: Peacemission.Models.Actor
