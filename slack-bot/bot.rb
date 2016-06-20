module SlackBot
  class Bot < SlackRubyBot::Bot
    match /^Muestrame (?<location>\w*)\?$/ do |client, data, match|
      client.say(channel: data.channel, text: "The weather in #{match[:location]} is nice.")
  end
end