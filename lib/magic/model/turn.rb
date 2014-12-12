module Magic
  module Model
    class Turn
      include Mongoid::Document
      has_many   :phases
      belongs_to :player
    end
  end
end
