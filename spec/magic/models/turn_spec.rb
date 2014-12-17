require_relative './../../../config/spec_helper.rb'

describe Turn do
  before :each do
    subject { create :turn }
  end

  it "return a new instance" do
    expect(subject).to be_an_instance_of(Turn)
  end
end
