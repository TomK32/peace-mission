describe "Main", ->
  beforeEach ->
    game_content()
    @view = new Peacemission.Views.Game.Main()
  it "should render", ->
    @view.render()
  it "should have navigation", ->
    expect(@view.navigation).toBeDefined()
    expect(game_view()).toContain('#navigation')

