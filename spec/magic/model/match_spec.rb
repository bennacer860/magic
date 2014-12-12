require_relative './../../../config/spec_helper.rb'
require_relative './../../../lib/magic/model/match.rb'
require_relative './../../../lib/magic/model/player.rb'
require_relative './../../../lib/magic/model/turn.rb'

describe Magic::Model::Match do
  before :each do
    @match = Magic::Model::Match.create
    @p1   = Magic::Model::Player.create(name: "John")
    @p2   = Magic::Model::Player.create(name: "Marcus")

    @match.players << [@p1, @p2]
    @match.save!
  end

  it "create one match" do
    expect(Magic::Model::Match.count).to eq(1)
  end

  it "bring players to match" do
    expect(@match.players).to eq([@p1, @p2])
  end
end