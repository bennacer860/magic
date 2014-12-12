require_relative './../../../config/spec_helper.rb'
require_relative './../../../lib/magic/model/turn.rb'

describe Magic::Model::Turn do
  before :each do
    @turn = Magic::Model::Turn.create
  end

  it "return a new instance" do
    expect(@turn).to be_an_instance_of(Magic::Model::Turn)
  end
end