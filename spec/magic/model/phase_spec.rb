require_relative './../../../config/spec_helper.rb'
require_relative './../../../lib/magic/model/phase.rb'
require_relative './../../../lib/magic/model/player.rb'
require_relative './../../../lib/magic/model/turn.rb'
require_relative './../../../lib/magic/model/match.rb'

describe Phase do
  before :each do
    @p1    = Player.create(name: "John")
    @mach  = Match.create(players: [@p1])
    @first_turn  = Turn.create
    @p1.turns << @first_turn
    @p1.save
    @first_phase  = Phase.create(turn_id: @first_turn.id)
  end

  context "when turn is created" do
    context "when first phase is created" do
      it "set current turn" do
        expect(@first_phase.turn_id).to eq(@first_turn.id)
      end

      it "return a new instance" do
        expect(@first_phase).to be_an_instance_of(Phase)
      end

      it "set name" do
        expect(@first_phase.name).to eq("untap")
      end
    end

    context "when second phase is created" do
      before :each do
        @second_phase = Phase.create(turn_id: @first_turn.id)
      end

      it "set current turn" do
        expect(@second_phase.turn_id).to eq(@first_turn.id)
      end

      it "set name" do
        expect(@second_phase.name).to eq(Phase::UPKEEP)
      end
    end


    context "when third phase is created" do
      before :each do
        second_phase = Phase.create(turn_id: @first_turn.id)
        @third_phase = Phase.create(turn_id: @first_turn.id)
      end

      it "set current turn" do
        expect(@third_phase.turn_id).to eq(@first_turn.id)
      end

      it "set name" do
        expect(@third_phase.name).to eq(Phase::DRAW)
      end
    end
  end
end

