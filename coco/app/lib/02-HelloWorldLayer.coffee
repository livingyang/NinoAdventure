GenerateScreenPosition = ->
  x: cc.director.getWinSize().width * Math.random()
  y: cc.director.getWinSize().height * Math.random()

# get number : (-2, -1) or (1, 2)
GetRandomSpeed = ->
  if Math.random() < 0.5
    -1 - Math.random()
  else
    1 + Math.random()

GenerateGameData = ->
  ninoPosition: GenerateScreenPosition()
  treaturePosition: GenerateScreenPosition()
  ninoSpeed:
    x: GetRandomSpeed()
    y: GetRandomSpeed()
  ninoEyeRange: 50 + Math.random() * 100

@HelloWorldLayer = cc.Layer.extend
  ctor: ->
    @_super()

    # # 1 printInfo
    # @debugLabel = cc.LabelTTF.create 'Game start', 'Arial', 30
    # @addChild @debugLabel
    # @debugLabel.setPosition cc.director.getWinSize().width * 0.5, cc.director.getWinSize().height * 0.8
    #
    # @printInfo = (info) -> @debugLabel.setString info
    #
    # @gameData = GenerateGameData()

    # # 2 create sprNino
    # @sprNino = cc.Sprite.create res.CloseNormal_png
    # @sprNino.setPosition @gameData.ninoPosition
    # @addChild @sprNino

    # # 3 create sprTreature
    # @sprTreature = cc.Sprite.create res.CloseSelected_png
    # @sprTreature.setPosition @gameData.treaturePosition
    # @addChild @sprTreature

    # # 4 make sprTreature obvious
    # @sprTreature.setColor cc.color.YELLOW
    # @sprTreature.runAction cc.repeatForever cc.rotateBy 2, 360

    # # 5 create Nino
    # @nino = new Nino

    # # 6 schedule update
    # @scheduleUpdate()

    true

  # # 6 schedule update
  # update: (dt) ->
  #   switch @nino.current
  #     when 'none'
  #       @nino.go()
  #
  #     when 'searching'
  #       @sprNino.x += @gameData.ninoSpeed.x
  #       @sprNino.y += @gameData.ninoSpeed.y
  #
  #       if @gameData.ninoEyeRange > cc.pDistance @sprNino.getPosition(), @sprTreature.getPosition()
  #         @nino.find()
  #
  #       screenRect = cc.rect(0, 0, cc.director.getWinSize().width, cc.director.getWinSize().height)
  #       if not cc.rectContainsPoint screenRect, @sprNino.getPosition()
  #         @nino.notFind()
  #
  #     when 'smile'
  #       @nino.back()
  #       @printInfo? 'Nino found treature, now smile ^_^'
  #       console.log @gameData
  #       console.log @sprNino.getPosition()
  #       console.log @sprTreature.getPosition()
  #
  #     when 'cry'
  #       @nino.back()
  #       @printInfo? 'Nino not found treature, now cry >_<'
  #       console.log @gameData
  #       console.log @sprNino.getPosition()
  #       console.log @sprTreature.getPosition()
