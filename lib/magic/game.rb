require 'mongoid'
ENV["RACK_ENV"] = "development"
Mongoid.load!("./../../db/mongoid.yml")


module Magic
  class Game
    include Mongoid::Document

    def show
      p Game.count
    end
  end
end

m = Magic::Game.new
m.show