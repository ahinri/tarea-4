module SlackBot
  module Commands
    class Accion < SlackRubyBot::Commands::Base
      match /^(?<location>\w*)$/ do |client, data, match|
      	client.say(channel: data.channel, text: "Recuerde separar palabras con '_' https://maps.googleapis.com/maps/api/staticmap?size=500x500&center=#{match[:location]}")
      end
    end
  end
end