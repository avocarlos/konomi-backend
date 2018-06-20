require 'rubygems'
require 'bundler'
require 'sinatra'

Bundler.require

set :port, 3000
set :bind, '0.0.0.0'

get '/' do
  "Hello world, it's #{Time.now} at the server!"
end


