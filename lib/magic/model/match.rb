require 'mongoid'

class Match
  include Mongoid::Document
  has_many :players

  field :name
end
