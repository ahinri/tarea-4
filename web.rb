require 'sinatra/base'

module SlackBot
  class Web < Sinatra::Base
    get '/' do
      'Bienvenido a la Tarea 4'
    end
  end
end