 # test

require 'docking_station'

describe DockingStation do
  it 'creates new DockingStation' do
    expect(DockingStation.new)
  end

  it {is_expected.to respond_to(:release_bike)}

  it 'creates new working bike' do
    bike = subject.release_bike
    expect(bike). to be_working
  end
end
