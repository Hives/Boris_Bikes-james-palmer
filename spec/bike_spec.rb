# test

require 'bike'

describe Bike do
  it {is_expected.to respond_to(:working?)}

  it {is_expected.to respond_to(:is_broken)}

  it "returns 'true' to 'working?' on a new bike" do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it 'changes working? to false if bike is_broken' do
    bike = Bike.new
    bike.is_broken
    expect(bike.working?).to eq false
  end

end
