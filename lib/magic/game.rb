require 'mongoid'

module Magic
  class Game
    include Mongoid::Document
    has_many :players

    field :name
  end
end

