require 'sinatra'
require 'redis'
require 'pry'

redis = Redis.new

get '/find_by_rfc/:rfc' do
 	redis.get params[:rfc] 
end

get '/find_by_concept/:concept' do
  redis.get params[:concept]
end

get '/find_by_rfc_concept' do
  redis.get params.values.join(",")
end