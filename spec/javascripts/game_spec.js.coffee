describe "Game", ->
  beforeEach ->
    @game = new Peacemission.Models.Game()
  it "should have player", ->
    expect(@game.player).toBeDefined()
  it "should have actors", ->
    expect(@game.actors).toBeDefined()
  describe "actor", ->

  describe "round", ->
    it "should fire actor timers", ->

