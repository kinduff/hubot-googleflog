# Description
#   Hubot script that integrates googleflog translator
#
# Commands:
#   hubot googleflog - with text to be translated.
#   hubot gf - alias for googleflog command.
#
# Author:
#   kinduff <abarcadabra@gmail.com>
googleflog = require('googleflog')

gTranslate = (inputText) ->
  return googleflog.t(inputText);

module.exports = (robot) ->
  robot.respond /gf (.*)/i, (msg) ->
    inputText = msg.match[1]
    msg.send gTranslate(inputText)
  robot.respond /googleflog (.*)/i, (msg) ->
    inputText = msg.match[1]
    msg.send gTranslate(inputText)
