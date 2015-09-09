Helper = require('hubot-test-helper')
expect = require('chai').expect
sinon = require('sinon')

# helper loads a specific script if it's a file
helper = new Helper('./../scripts/archer.coffee')

class MockResponse extends Helper.Response
  random: (items) ->
    "...Because that's how you get ants!"


describe 'Archer:', ->
  room = null

  beforeEach ->
    room = helper.createRoom({'response': MockResponse})

  afterEach ->
    room.destroy()

  context 'user says archer quote', ->
    beforeEach ->
      room.user.say 'alice', 'archer quote'

    it 'should respond with a random quote', ->
      expect(room.messages).to.eql [
        ['alice', 'archer quote']
        ['hubot', '...Because that\'s how you get ants!']
      ]
