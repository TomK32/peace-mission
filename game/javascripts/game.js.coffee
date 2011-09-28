class Game
  @version = '0.1'
  constructor: ->
    @player = new Player()
    @actors = []
  create_actor: (args) ->
    console.log(args)
    actor = new Actor(args)
    @actors.push actor
    return actor