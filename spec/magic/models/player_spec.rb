require_relative './../../../config/spec_helper.rb'
require_relative './../../../lib/magic/models/player.rb'
require_relative './../../../lib/magic/models/turn.rb'
require_relative './../../../spec/factories/players.rb'

describe Player do
  before :each do
    @player = create(:player)
  end

  it "return an instance of Player" do
    expect(@player).to be_an_instance_of(Player)
  end
end
