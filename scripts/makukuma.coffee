module.exports = (robot) ->
  robot.hear /こんちわ/, (msg) ->
    msg.send "(´◔౪◔) < こんちわ"

  robot.hear /まくくま(くん)?/, (msg) ->
    msg.send msg.random [
      "(´◔౪◔) < よんだらか？",
      "(´◔౪◔) < なんら？",
      ":sparkles:(´◔౪◔):sparkles: < まくくまらよ〜"
    ]

  robot.hear /(🍎|🍏|:(green_)?apple:)/, (msg) ->
    appleReplies = [
      "(´◔౪◔) < じーこんあいがと",
      "(´◔౪◔) < あっじーこんいいらねえ"
    ]
    if ("🍏" in msg.match || ":green_apple:" in msg.match)
      appleReplies = appleReplies.concat [
        "(´◔౪◔) < あっみどりじーこん",
        "(´◔౪◔) < みどりじーこんしゅきらよ",
        "(´◔౪◔):green-apple: < みどりじーこんおいしいらねえ"
      ]
    else
      appleReplies.push "(´◔౪◔):apple: < じーこんおいしいら"
    msg.send msg.random appleReplies

  robot.hear /こちらです/, (msg) ->
    replies = [
      "(´◔౪◔):apple: < じーこんはこちらです",
      "(´◔౪◔):apple: < こいはじーこん"
    ]
    msg.send msg.random replies

  robot.hear /(乾杯|:beer(s)?:)/, (msg) ->
    msg.send "(´◔౪◔):tropical_drink: < かんぱ〜い"
