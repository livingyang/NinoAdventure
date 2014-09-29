
class @Nino

StateMachine = @StateMachine ? global.StateMachine

StateMachine.create
  target: @Nino::
  events: [
    { name: 'go', from: 'none', to: 'searching' }
    { name: 'find', from: 'searching', to: 'smile' }
    { name: 'notFind', from: 'searching', to: 'cry' }
    { name: 'back', from: ['smile', 'cry'], to: 'rest' }
    { name: 'reset', from: '*', to: 'none' }
  ]
