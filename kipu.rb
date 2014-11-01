require "rubygems"
require 'sinatra'
require 'json'
require 'active_record'
require 'data_mapper'
DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')





get '/' do
 "Hello world"
end

get '/code' do
  content_type :json
  { :code => string = File.open('kipu.rb', 'rb') { |file| file.read } }.to_json
end