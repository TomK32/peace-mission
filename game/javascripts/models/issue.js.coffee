class window.Peacemission.Models.Issue extends Backbone.Model
  paramRoot: 'issue'

  defaults:
    title: null
    description: null
    solved: false

  solved: ->
    @attributes.solved

class window.Peacemission.Collections.Issues extends Backbone.Collection
  model: Peacemission.Models.Issue

  solved: ->
    @.select (issue) ->
      issue.solved()