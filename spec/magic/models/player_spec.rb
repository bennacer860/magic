require_relative './../../../config/spec_helper.rb'

describe Player do
  before :each do
    @player = create(:player)
  end

  it "return an instance of Player" do
    expect(@player).to be_an_instance_of(Player)
  end
end
