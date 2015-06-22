module.exports = (robot) ->
  robot.hear /こんちわ/, (msg) ->
    msg.send "(´◔౪◔) < こんちわ"

  robot.hear /まくくま(くん)?/, (msg) ->
    msg.send msg.random [
      "(´◔౪◔) < よんだらか？",
      "(´◔౪◔) < なんら？",
      ":sparkles:(´◔౪◔):sparkles: < まくくまらよ〜"
    ]

  robot.hear /:(green_)?apple:/, (msg) ->
    appleReplies = [
      "(´◔౪◔) < じーこんあいがと",
      "(´◔౪◔) < あっじーこんいいらねえ"
    ]
    if (":green_apple:" in msg.match)
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
      "(´◔౪◔):apple: < こいはじーこん",
      "(´◔౪◔):apple: < こいもあげゆね",
    ]
    msg.send msg.random replies

  robot.hear /(乾杯|かんぱい|:beer(s)?:)/, (msg) ->
    msg.send "(´◔౪◔):tropical_drink: < かんぱ〜い"

  robot.hear /(おわり|終わり)/, (msg) ->
    msg.send "(( (´◔౪◔) )) < おわり〜"

  robot.hear /しょうなんらねえ/, (msg) ->
    msg.send "(´◔౪◔) < しょうなんらよ"


  robot.hear /(ʃ(\))?⁾⁾|よしよし|なでなで|かあいい|かわいい|けやい)/, (msg) ->
    replies = [
      ":sparkles:(´◔౪◔):sparkles:",
      "(´◔౪◔):heartpulse:",
      "(´◔౪◔):v:"
    ]
    msg.send msg.random replies
