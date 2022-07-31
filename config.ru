require 'sinatra'

class App < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/dice' do
    rolled_dice = rand(1..6)
    { roll: rolled_dice }.to_json
  end

  get '/add/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    sum = num1 + num2
    { result: sum }.to_json
  end
end

run App
