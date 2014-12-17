require_relative './../../../config/spec_helper.rb'
require_relative './../../../lib/magic/models/match.rb'
require_relative './../../../lib/magic/models/player.rb'
require_relative './../../../lib/magic/models/turn.rb'
require_relative './../../../lib/magic/models/phase.rb'

describe Match do
  before :each do
    @match = Match.create
    @p1    = Player.create(name: "John")
    @p2    = Player.create(name: "Marcus")

    @match.players << [@p1, @p2]
    @match.save!
  end

  context "create one match" do
    it "create one match" do
      expect(Match.count).to eq(1)
    end

    it "bring players to match" do
      expect(@match.players).to eq([@p1, @p2])
    end

    context "play first turn" do
      before :each do
        @turn  = Turn.create
        @p1.turns << @turn
        @p1.save!

        @phase = Phase.create(turn_id: @turn.id)
        @turn.phases << @phase
        @turn.save!
      end

      it "player have first turn" do
        expect(@p1.turns).to eq([@turn])
      end

      it "player have first phase" do
        expect(@p1.turns.first.phases).to eq([@phase])
      end
    end
  end
end
