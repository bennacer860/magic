require 'mongoid'

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