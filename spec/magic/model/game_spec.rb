require 'rspec'
require_relative './../../../config/spec_helper.rb'
require_relative './../../../lib/magic/model/game.rb'
require_relative './../../../lib/magic/model/player.rb'

describe Magic::Model::Game do
  before :each do
    @game = Magic::Model::Game.create
    @p1   = Magic::Model::Player.create(name: "John")
    @p2   = Magic::Model::Player.create(name: "Marcus")

    @game.players << [@p1, @p2]
    @game.save!
  end

  it "create one game" do
    expect(Magic::Model::Game.count).to eq(1)
  end

  it "bring players to game" do
    expect(@game.players).to eq([@p1, @p2])
  end
end