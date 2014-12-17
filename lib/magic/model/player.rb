require 'mongoid'

class Player
  include Mongoid::Document
  has_many   :turns
  belongs_to :match
  
  field :name, type: String
end