describe "Actor", ->
  beforeEach ->
    @game = new Game()
    @actor = @game.create_actor({name: 'Actor A', description: 'This is actor A'})
  it "should have name", ->
    expect(@actor.name).toEqual 'Actor A'
  it "should have description", ->
    expect(@actor.description).toEqual 'This is actor A'
  describe "relations", ->
    it "should have", ->
      expect(@actor.relations).toBeDefined()



