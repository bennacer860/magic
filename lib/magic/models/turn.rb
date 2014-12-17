require 'mongoid'

class Turn
  include Mongoid::Document
  has_many   :phases
  belongs_to :player
end
