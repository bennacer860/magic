require 'mongoid'

class Expansion
  include Mongoid::Document
  has_many :cards

  field :name,    type: String
  field :code,    type: String
  field :release, type: String
  field :border,  type: String
  field :type,    type: String
  field :block,   type: String
  field :booster, type: Array
end
