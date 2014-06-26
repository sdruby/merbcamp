# GEMS
require 'sinatra'
require 'rack-rewrite'

# APP
require './server'
run Sinatra::Application
