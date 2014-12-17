require_relative './../../../config/spec_helper.rb'
require_relative './../../../lib/magic/model/player.rb'

describe Player do
  before :each do
    @player = Player.create(name: "John")
  end

  it "return an instance of Player" do
    expect(@player).to be_an_instance_of(Player)
  end
end