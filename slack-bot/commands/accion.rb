module SlackBot
  module Commands
    class Accion < SlackRubyBot::Commands::Base
      #command 'accion' do |client, data, _match|
      #  client.say(channel: data.channel, text: '4')
      match /(?<location>\w*)\?$/ do |client, data, match|
        client.say(channel: data.channel, text: "The weather in #{match[:location]} is nice.")
      end
    end
  end
end