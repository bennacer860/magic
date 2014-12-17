require 'mongoid'

ENV["RACK_ENV"] = "development"
Mongoid.load!("./db/mongoid.yml")

require_relative './magic/model/expansion.rb'
require_relative './magic/model/card.rb'


