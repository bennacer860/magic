module Magic
  module Model
    class Phase
      include Mongoid::Document
      belongs_to :turn

      UNTAP        = "untap"
      UPKEEP       = "upkeep"
      DRAW         = "draw"
      MAIN         = "main"
      BEGIN_COMBAT = "begin_combat"
      ATTACK       = "attack"
      BLOCK        = "block"
      DAMAGE       = "damage"
      END_COMBAT   = "end_combat"
      SECOND_MAIN  = "second_main"
      SECOND_END   = "second_end"
      CLEANUP      = "cleanup"

      PHASES       = [UNTAP, UPKEEP, DRAW, MAIN, BEGIN_COMBAT, ATTACK, BLOCK, 
                      DAMAGE, END_COMBAT, SECOND_MAIN, SECOND_END, CLEANUP]

      field :name, type: String
    end
  end
end
