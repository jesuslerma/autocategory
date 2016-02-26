require 'sinatra'
require 'redis'
require 'pry'

redis = Redis.new

get '/find' do
	puts  params.values.join(",")
  redis.get params.values.join(",")
end
