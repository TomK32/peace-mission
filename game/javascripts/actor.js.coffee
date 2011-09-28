class Actor

  constructor: (args) ->
    @relations = {}
    console.log args
    @name = args.name
    @description = args.description
  