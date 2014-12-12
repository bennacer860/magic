require 'mongoid'

module Magic
  module Model
    class Match
      include Mongoid::Document
      has_many :players

      field :name
    end
  end
end
