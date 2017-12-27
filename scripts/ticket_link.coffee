module.exports = (robot) ->
  robot.hear /#/i, (msg) ->
    msg.send "https://google.com"
    msg.send "#{msg}"
