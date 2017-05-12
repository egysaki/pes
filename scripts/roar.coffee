module.exports = (robot) ->
  robot.hear /犬|いぬ|イヌ|dog/i, (msg) ->
    msg.send "bow wow"
