require 'rspec'
require_relative './../../../config/spec_helper.rb'
require_relative './../../../lib/magic/model/player.rb'

describe Magic::Model::Player do
  before :each do
    @player = Magic::Model::Player.create(name: "John")
  end

  it "return an instance of Player" do
    expect(@player).to be_an_instance_of(Magic::Model::Player)
  end
end