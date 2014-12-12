require 'rspec'
require_relative './../../lib/magic/game.rb'

describe Magic::Game do
  it "create one game" do
    game = Magic::Game.new
    expect(game).to be_an_instance_of(Magic::Game)
  end

  it "bring players to game" do
    game = Magic::Game.new
    expect(game.players).to eq([player1, player2])
  end
end