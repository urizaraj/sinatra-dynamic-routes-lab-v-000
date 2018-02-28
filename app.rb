require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name].reverse
    "#{name}"
  end

  get get '/square/:number' do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end
end
