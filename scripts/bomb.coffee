module.exports = (robot) ->
  robot.hear /無茶ぶり/i, (msg) ->
    name = msg.random [
      "@anaka"
    ]
    msg.send "#{name}  面白いこと言って"
