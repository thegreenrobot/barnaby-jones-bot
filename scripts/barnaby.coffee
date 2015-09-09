# Description:
#   Get Barnaby Jones to respond to his name
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   @barnaby-jones something
#
# Author:
#   thegreenrobot

# coffeelint: disable=max_line_length

responses = [
  "Master Cylinder!!!",
  "I HAVE PATTY HEARST SYNDROME!",
  "Do you hear a dial tone? 'Cause Barnaby Jones is off the hook!"

]

# coffeelint: enable=max_line_length

module.exports = (robot) ->
  robot.hear /.*(barnaby-jones).*/i, (msg) ->
    msg.send msg.random responses
