child_process = require('child_process')

module.exports = (robot) ->
  robot.respond /calling/i, (msg) ->
    msg.send "jhonを召喚します"
    child_process.exec 'sh ../jhon/jhon.sh'
