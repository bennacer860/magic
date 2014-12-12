module Magic
  module Model
    class Phase
      include Mongoid::Document
      belongs_to :turn

      field :name, type: String
    end
  end
end
