cronJob = require('cron').CronJob

module.exports = (robot) ->

  send = (channel, msg) ->
    robot.send {room: channel}, msg

  new cronJob('0 00 9 * * 1-5', () ->
    send "#bot_test", "@here おはようございます!"
  ).start()

  new cronJob('0 00 11 * * 1-5', () ->
    send "#bot_test", "@here 午前中も残すところあと1時間です!"
  ).start()

  new cronJob('0 00 15 * * 1-5', () ->
    send "#bot_test", "@here おやつの時間です!"
  ).start()

  new cronJob('0 00 17 * * 1-5', () ->
    send "#bot_test", "@here あと1時間で帰れるぞ"
  ).start()

  new cronJob('0 00 18 * * 1-5', () ->
    send "#bot_test", "@here 定時ダッシュしようぜ"
  ).start()

  robot.hear /cron -h/i, (msg) ->
    msg.send "cronJob(sec min hour day month day of the week)"
