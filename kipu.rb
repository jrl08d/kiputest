require "rubygems"
require 'sinatra'
require 'json'






get '/' do
 "Hello world"
end

get '/code' do
  content_type :json
  { :code => string = File.open('kipu.rb', 'rb') { |file| file.read } }.to_json
end