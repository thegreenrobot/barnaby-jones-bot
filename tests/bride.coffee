Helper = require('hubot-test-helper')
expect = require('chai').expect
sinon = require('sinon')

# helper loads a specific script if it's a file
helper = new Helper('./../scripts/bride.coffee')

class MockResponse extends Helper.Response
  random: (items) ->
    "Westley: We are men of action, lies do not become us."


describe 'Princess Bride:', ->
  room = null

  beforeEach ->
    room = helper.createRoom({'response': MockResponse})

  afterEach ->
    room.destroy()

  context 'user says pb quote', ->
    beforeEach ->
      room.user.say 'alice', 'pb quote'

    it 'should respond with a random quote', ->
      expect(room.messages).to.eql [
        ['alice', 'pb quote']
        ['hubot', 'Westley: We are men of action, lies do not become us.']
      ]
