require_relative './../../../config/spec_helper.rb'
require_relative './../../../lib/magic/model/phase.rb'

describe Magic::Model::Phase do
  before :each do
    @phase = Magic::Model::Phase.create
  end

  it "return a new instance" do
    expect(@phase).to be_an_instance_of(Magic::Model::Phase)
  end
end
