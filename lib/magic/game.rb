require 'mongoid'

module Magic
  class Game
    include Mongoid::Document
    field :name

  end
end

