require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello!"
end

get '/secret' do
  "World in socks and pants"
end

get '/random-cat' do
 @name = ["Amigo", "Misty", "Almond"].sample
 erb(:index)
end

get '/named-cat' do
  p params
  @cat_name = params[:cat_name]
  erb(:index)
 end