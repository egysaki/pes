client = require 'cheerio-httpcli'

module.exports = (robot) ->

  robot.hear /test(?: (\S+))?/, (msg) ->

    client.fetch 'http://www.google.com/search', {q: 'node.js'}, (err, $, res, body) ->

      msg.send $('title').text()
      msg.send res.headers
      msg.send $('a').attr('href');
