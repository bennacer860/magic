require_relative './../../../config/spec_helper.rb'

describe Player do
  before :each do
    subject { create(:player) }
  end

  it "return an instance of Player" do
    expect(subject).to be_an_instance_of(Player)
  end
end
