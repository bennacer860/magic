require_relative './../../../config/spec_helper.rb'

describe Turn do
  before :each do
    @turn = Turn.create
  end

  it "return a new instance" do
    expect(@turn).to be_an_instance_of(Turn)
  end
end
