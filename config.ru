require 'rubygems'
require 'bundler'
require 'sinatra/base'
require_relative 'controllers/application_controller'

Bundler.require

run ApplicationController
