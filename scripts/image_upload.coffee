image = ['book1.png']
module.exports = (robot) ->
  robot.respond /(本)$/i, (msg) ->
    text = msg.match[1] 
    msg.send "#{text}絶賛発売中です"
    filename = msg.random image
    exec "curl -F file=@#{filename} -F token=#{process.env.HUBOT_SLACK_TOKEN} https://slack.com/api/files.upload"
