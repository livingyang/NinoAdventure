chai = require 'chai'
chai.should()

global.StateMachine = (require '../app/lib/00-state-machine.coffee').StateMachine
Nino = (require '../app/lib/01-Nino').Nino

describe "Nino", ->
  it "state machine spec", ->
    nino = new Nino

    # find
    nino.current.should.eql 'none'

    nino.go()
    nino.current.should.eql 'searching'

    nino.find()
    nino.current.should.eql 'smile'

    nino.back()
    nino.current.should.eql 'rest'

    # not find
    nino.reset()
    nino.current.should.eql 'none'

    nino.go()
    nino.current.should.eql 'searching'

    nino.notFind()
    nino.current.should.eql 'cry'

    nino.back()
    nino.current.should.eql 'rest'

    nino.reset()
    nino.current.should.eql 'none'
