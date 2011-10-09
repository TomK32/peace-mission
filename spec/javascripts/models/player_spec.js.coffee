describe "Player", ->
  beforeEach ->
    @player = new Peacemission.Models.Player({name: 'Thomas'})
  describe "attributes", ->
    it "should have name", ->
      expect(@player.attributes.name).toEqual 'Thomas'
  it "should have issues", ->
    expect(@player.issues).toBeDefined()
  