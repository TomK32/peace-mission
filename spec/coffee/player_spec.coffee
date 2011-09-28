describe "Player", ->
  beforeEach ->
    @player = new Player({name: 'Thomas'})
  it "should have name", ->
    expect(@player.name).toEqual 'Thomas'
