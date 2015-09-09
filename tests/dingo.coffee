Helper = require('hubot-test-helper')
expect = require('chai').expect
sinon = require('sinon')

# helper loads a specific script if it's a file
helper = new Helper('./../scripts/dingo.coffee')

class MockResponse extends Helper.Response
  random: (items) ->
    "Wendell: Cody II is down!"


describe 'Frisky Dingo:', ->
  room = null

  beforeEach ->
    room = helper.createRoom({'response': MockResponse})

  afterEach ->
    room.destroy()

  context 'user says dingo quote', ->
    beforeEach ->
      room.user.say 'alice', 'dingo quote'

    it 'should respond with a random quote', ->
      expect(room.messages).to.eql [
        ['alice', 'dingo quote']
        ['hubot', 'Wendell: Cody II is down!']
      ]
