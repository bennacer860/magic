module Magic
  module Model
    class Player
      include Mongoid::Document
      belongs_to :match
      
      field :name, type: String
    end
  end
end