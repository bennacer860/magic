require 'mongoid'

class Card
  include Mongoid::Document
  belongs_to :expansion

  field :type,          type: String
  field :types,         type: Array
  field :colors,        type: Array
  field :multiverseid,  type: String
  field :name,          type: String
  field :subtypes,      type: Array
  field :original_type, type: String
  field :cmc,           type: String
  field :rarity,        type: String
  field :artist,        type: String
  field :power,         type: String
  field :thoughness,    type: String
  field :mana_cost,     type: String
  field :text,          type: String
  field :original_text, type: String
  field :flavor,        type: String
  field :number,        type: String
  field :rulings,       type: Array
  field :image_name,    type: String
  field :foreign_names, type: Array
  field :legalities,    type: Hash
  field :printings,     type: Array
end
