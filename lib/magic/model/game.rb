require 'mongoid'

module Magic
  module Model
    class Game
      include Mongoid::Document
      has_many :players

      field :name
    end
  end
end

