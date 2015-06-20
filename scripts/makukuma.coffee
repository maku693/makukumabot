module.exports = (robot) ->
  robot.hear /こんちわ/, (msg) ->
    msg.send "(´◔౪◔) < こんちわ"

  robot.hear /まくくまくん/, (msg) ->
    msg.send msg.random [
      "(´◔౪◔) < よんだらか？",
      "(´◔౪◔) < なんら？",
      ":sparkles:(´◔౪◔):sparkles: < まくくまらよ〜"
    ]

  robot.hear /(🍎|🍏|:(green-)?apple:)/, (msg) ->
  robot.hear /(🍎|🍏|:(green-)?apple:/, (msg) ->
    appleReplies = [
      "(´◔౪◔) < じーこんあいがと",
      "(´◔౪◔) < あっじーこんいいらねえ"
    ]
    if ("🍏" in msg.match || ":green-apple:" in msg.match)
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
      "(´◔౪◔):hand::apple: < じーこんはこちらです",
      "(´◔౪◔):apple: < こいはじーこん"
    ]
    msg.send msg.random replies

  robot.hear /乾杯/, (msg) ->
    msg.send "(´◔౪◔):tropical_drink: < かんぱ〜い"
