require_relative './../../../config/spec_helper.rb'

describe Match do
  before :each do
    subject { Match.new }
    @p1  = Player.create(name: "John")
    @p2  = Player.create(name: "Marcus")

    subject.players << [@p1, @p2]
    subject.save!
  end

  context "create one match" do
    it "create one match" do
      expect(Match.count).to eq(1)
    end

    it "bring players to match" do
      expect(subject.players).to eq([@p1, @p2])
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
