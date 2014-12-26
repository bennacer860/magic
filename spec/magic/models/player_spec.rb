require_relative './../../../config/spec_helper.rb'

describe Player do
  before :each do
    match = Match.create
    @player = create(:player_with_one_turn, match_id: match.id)
    subject { create(:p1)}
  end

  it "is one instance of Player" do
    expect(@player).to be_an_instance_of(Player)
  end

  it "have turns" do
    expect(@player.turns.size).to eq(1)
  end
end
