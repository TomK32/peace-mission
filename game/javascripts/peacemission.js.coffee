//= require jquery.min
//= require underscore-min
//= require backbone-min
//= require peacemission.backbone

//= require_tree ./templates
//= require_tree ./models
//= require_tree ./views


$ ->
  new Peacemission.Views.Game.Start()
  true
