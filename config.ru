require 'rubygems'
require 'bundler'
require 'sinatra/base'

Bundler.require

Dir.glob('./app/{helpers,controllers}/*.rb').each { |file| require file }

run Sinatra::Application

