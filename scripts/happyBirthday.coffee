module.exports = (robot) ->
  robot.hear /Happy birthday to you/, (msg) ->
      return
    msg.send "(´◔౪◔) < とぅ〜ゆ〜"
  robot.hear /Happy birthday dear (.*)/, (msg) ->
      return
    msg.send "(´◔౪◔) < #{msg.match[1]}〜"
  robot.hear /お誕生日おめでとう、(.*)。 :birthday:/, (msg) ->
      return
    msg.send "(´◔౪◔) < こいあげゆね :apple: :green_apple: :apple: :green_apple:"
    if msg.match[1] is "ざわ"
      msg.send "(´◔౪◔) < ざわちゃん、またあそんでね"
