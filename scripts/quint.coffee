# Description:
#   Quint was our old boss.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   quint quote - Returns a random Quint quote
#
# Author:
#   thegreenrobot

# coffeelint: disable=max_line_length

quotes = [
  "I'll fire your ass. - Quint",
  "My guitar is made from aged wood. - Quint",
  "Hungler thinks I'm a genius. - Quint",
  "No you won't be working from home. We have a business to run, office hours are from 9am to 4pm. - Quint",
  "You guys seen Joe?  *wanders off*",
  "I'm a linux guy. - Quint",
  "I'm a windows guy.  Did you know I wrote a book about Windows development and worked for Microsoft? - Quint",
  "When I was at MarketWatch we ran everything on Windows and it was very performant. - Quint",
  "Do you want to keep your job? - Quint",
  "These Vantage graphs just pop on my new Apple Cinema display. - Quint",
  "I don't think Jesse's doing a good job.  He get's too flustered and doesn't command the OMNI team space. - Quint",
  "Mike I've gotten some complaints that you're being to cocky and arrogant since your promotion in 2011. - Quint",
  "Matt I'm really sick of your attitude and I've heard some complaints as well. - Quint",
  "Hungler says you guys are doing a great job. - Quint",
  "Who's oncall?  Is there an OpEvent? - Quint",
  "I wrote my own OpEvent tool in Ruby On Rails. - Quint",
  "I'm glad we hired Stephen, it's good for diversity. - Quint",
  "We don't do load testing properly.  When I was the performance engineer... - Quint",
  "Isn't this datacenter top of the line? - Quint",
  "When I lived in Minnesota I walked into the dealersip in a t-shirt and bought a Corvette. - Quint",
  "I make the decisions around here.  I'm in charge. - Quint",
  "Did any of you guys watch The Office last night? - Quint",
  "I still think Mick made a mistake when he quit. - Quint",
  "If you guys want to use CentOS that's fine with me. - Quint",
  "Did any of you guys watch The Office last night? - Quint",
  "I'm using a Macbook Air.  Mike can have my old second hand laptop. - Quint",
  "He's been vetted! - Quint",
  "MindTap is the future of the business. I'm in a lot of high level meetings talking about this. - Quint",
  "We've made great progress as a team. - Quint",
  "What are these spikes on Vantage? - Quint",
  "Hey guys these champagne mojitos are delicious. - Quint",
  "What are you guys doing for lunch? How about Chinese? - Quint",
  "Is Jun sleeping? - Quint"
]

# coffeelint: enable=max_line_length

module.exports = (robot) ->
  robot.hear /.*(quint quote).*/i, (msg) ->
    msg.send msg.random quotes
