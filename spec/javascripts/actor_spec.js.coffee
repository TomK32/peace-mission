describe "Actor", ->
  beforeEach ->
    @game = new Peacemission.Models.Game()
    @actor = @game.create_actor({name: 'Actor A', description: 'This is actor A'})
  describe "attributes", ->
    it "should have name", ->
      expect(@actor.attributes.name).toEqual 'Actor A'
    it "should have description", ->
      expect(@actor.attributes.description).toEqual 'This is actor A'
  describe "relations", ->
    it "should have", ->
      expect(@actor.relations).toBeDefined()



