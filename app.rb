require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name].reverse
    "#{name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    phrase = params[:phrase]
    string = ''
    n.times do
      string << phrase
    end

    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = (1..5).to_a.map do |n|
      s = "word#{n}".to_s
      params[s]
    end

    "#{words.join(' ').}"
  end
end
