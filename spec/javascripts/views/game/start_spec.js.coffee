describe "Start", ->
  beforeEach ->
    game_content()
    @view = new Peacemission.Views.Game.Start()
  it "should render", ->
    @view.render()
  describe "player name", ->
    it "should have user name input", ->
      expect(game_view()).toContain('input[name="player_name"]');
    it "should default user name input", ->
      $('#start').click();
      expect(window.game.player.attributes.name).toEqual "Player"
    it "should use user name input", ->
      $('input[name="player_name"]').val('Thomas R. Koll')
      $('#start').click();
      expect(window.game.player.attributes.name).toEqual "Thomas R. Koll"