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
