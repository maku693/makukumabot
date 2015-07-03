module.exports = (robot) ->
  robot.hear /Happy birthday to you/, (msg) ->
    unless msg.envelope?.user?.name is "neo"
      return
    msg.send "(´◔౪◔) < とぅ〜ゆ〜"
  robot.hear /Happy birthday, dear (.*)/, (msg) ->
    unless msg.envelope?.user?.name is "neo"
      return
    you = msg.match[1]
    msg.send "(´◔౪◔) < #{you}〜"
  robot.hear /お誕生日おめでとう、(.*)。 :birthday:/, (msg) ->
    unless msg.envelope?.user?.name is "neo"
      return
    msg.send "(´◔౪◔) < こいあげゆね :apple: :green_apple: :apple: :green_apple:"
    if msg.match[1] is "ざわ"
      msg.send "(´◔౪◔) < ざわちゃん、またあそんでね"
