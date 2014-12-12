require_relative './../../../config/spec_helper.rb'
require_relative './../../../lib/magic/model/match.rb'
require_relative './../../../lib/magic/model/player.rb'
require_relative './../../../lib/magic/model/turn.rb'
require_relative './../../../lib/magic/model/phase.rb'

describe Magic::Model::Match do
  before :each do
    @match = Magic::Model::Match.create
    @p1    = Magic::Model::Player.create(name: "John")
    @p2    = Magic::Model::Player.create(name: "Marcus")

    @match.players << [@p1, @p2]
    @match.save!
  end

  context "create one match" do
    it "create one match" do
      expect(Magic::Model::Match.count).to eq(1)
    end

    it "bring players to match" do
      expect(@match.players).to eq([@p1, @p2])
    end

    context "play first turn" do
      before :each do
        @turn  = Magic::Model::Turn.create
        @p1.turns << @turn
        @p1.save!

        @phase = Magic::Model::Phase.create
        @turn.phases << @phase
        @turn.save!
      end

      it "create first turn of player" do
        expect(@p1.turns).to eq([@turn])
      end

      it "create first phase of player" do
        expect(@p1.turns.first.phases).to eq([@phase])
      end
    end
  end
end
