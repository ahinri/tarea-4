module SlackBot
  module Commands
    class Accion < SlackRubyBot::Commands::Base
      #command 'accion' do |client, data, _match|
      #  client.say(channel: data.channel, text: '4')
      match(?<expression>.*)$/) do |client, data, match|
        expression = match['expression'].strip
        query = { query: expression }
        message = expression + 'https://maps.googleapis.com/maps/api/staticmap?size=500x500&center=santiago_de_chile'
        send_message client, data.channel, message
      end
    end
  end
end