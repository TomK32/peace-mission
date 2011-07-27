describe "Game", ->
  beforeEach ->
    @game = new Game()
  it "should have player", ->
    expect(@game.player).toBeDefined()