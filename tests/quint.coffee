Helper = require('hubot-test-helper')
expect = require('chai').expect
sinon = require('sinon')

# helper loads a specific script if it's a file
helper = new Helper('./../scripts/quint.coffee')

class MockResponse extends Helper.Response
  random: (items) ->
    "I'll fire your ass. - Quint"


describe 'Quint:', ->
  room = null

  beforeEach ->
    room = helper.createRoom({'response': MockResponse})

  afterEach ->
    room.destroy()

  context 'user says quint quote', ->
    beforeEach ->
      room.user.say 'alice', 'quint quote'

    it 'should respond with a random quote', ->
      expect(room.messages).to.eql [
        ['alice', 'quint quote']
        ['hubot', 'I\'ll fire your ass. - Quint']
      ]
