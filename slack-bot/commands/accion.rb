module SlackBot
  module Commands
    class Accion < SlackRubyBot::Commands::Base
      #match /^(?<location>\w*)$/ do |client, data, match|
      #	client.say(channel: data.channel, text: "https://maps.googleapis.com/maps/api/staticmap?size=500x500&center=#{match[:location]}")
      scan(/([a-Z]+)/) do |client, data, stocks|
      	string=""
      	stocks.each do |palabra|
      	  string=string+"_"+palabra
      	end
      client.say(channel: data.channel, text: "https://maps.googleapis.com/maps/api/staticmap?size=500x500&center="+string)
      end
    end
  end
end