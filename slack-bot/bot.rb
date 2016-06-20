module SlackBot
  class Bot < SlackRubyBot::Bot
  	match /^Muestrame (?<location>\w*)\?$/ do |client, data, match|
      client.say(channel: data.channel, text: "https://maps.googleapis.com/maps/api/staticmap?size=500x500&center=#{match[:location]}")
    end
  end
end