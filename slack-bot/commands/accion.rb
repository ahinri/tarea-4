module SlackBot
  module Commands
    class Accion < SlackRubyBot::Commands::Base
      command 'accion' do |client, data, _match|
        client.say(channel: data.channel, text: 'https://maps.googleapis.com/maps/api/staticmap?size=500x500&center=santiago_de_chile')
      end
    end
  end
end