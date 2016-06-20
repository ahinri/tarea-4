module SlackBot
  module Commands
    class Accion < SlackRubyBot::Commands::Base
      command 'accion' do |client, data, _match|
        client.say(channel: data.channel, text: '4')
      end
    end
  end
end