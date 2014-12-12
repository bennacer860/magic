require 'mongoid'

ENV["RACK_ENV"] = "development"
Mongoid.load!("./db/mongoid.yml")

require './lib/magic/game.rb'
