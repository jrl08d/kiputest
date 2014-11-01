require "rubygems"
require 'sinatra'
require 'json'






get '/' do
 "Hello world"
end

get '/code.json' do
  content_type :json
  { :code => 'require "sinatra"
  	require "json"
  	get "/code.json" do
  		content_type :json
  		{ :code => "" }
  	end' }.to_json
end