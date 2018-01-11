client = require 'cheerio-httpcli'

module.exports = (robot) ->

  #robot.hear /test(?: (\S+))?/, (msg) ->
  robot.hear /test(.*)/i, (msg) ->

    url = msg.match[1]

    #client.fetch 'http://www.google.com/search', {q: 'node.js'}, (err, $, res, body) ->
    client.fetch 'http://www.google.com/search', {q: url}, (err, $, res, body) ->
    #client.fetch 'http://www.db.netkeiba.com/search', {q: url}, (err, $, res, body) ->

      msg.send $('title').text()
      msg.send res.headers
      msg.send $('a').attr('href');
