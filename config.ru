require 'rubygems'
require 'bundler'
require 'sinatra/base'
require_relative 'controllers/application_controller'
require_relative 'controllers/project_controller'

Bundler.require

map('/project') { run ProjectController }
map('/') { run ApplicationController }
