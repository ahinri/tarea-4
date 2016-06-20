require 'sinatra/base'

module SlackBot
  class Web < Sinatra::Base
    get '/' do
      'Hola soy afhinrichsen'
    end
  end
end