module Magic
  class Player
    include Mongoid::Document

    field :name, type: String
  end
end