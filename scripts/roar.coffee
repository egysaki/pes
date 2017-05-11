module.exports = (robot) ->
  robot.hear /犬/i, (msg) ->
    msg.send "bow wow"
