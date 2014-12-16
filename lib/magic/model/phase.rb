module Magic
  module Model
    class Phase
      include Mongoid::Document

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

      belongs_to :turn
      field :name, type: String

      before_create :set_current_name

      def current_turn
        Turn.find(self.turn_id)
      end

      def get_name
        turn = Turn.find(self.turn_id)
        index = turn.phases.size
        PHASES[index]
      end

      def set_current_name
        if self.current_turn.phases.size == 0
          self.name = UNTAP
        else
          self.name = get_name
        end
      end
    end
  end
end
