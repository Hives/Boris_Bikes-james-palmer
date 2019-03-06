 # test

require 'docking_station'

describe DockingStation do
  it 'creates new DockingStation' do
    expect(DockingStation.new)
  end

  it {is_expected.to respond_to(:release_bike)}
  it {is_expected.to respond_to(:dock).with(1).argument }

  it 'creates new working bike' do
    bike = subject.release_bike
    expect(bike). to be_working
  end

  it 'docks a bike' do
    bike = subject.release_bike
    expect(subject.dock(bike)).to eq bike
  end

  it 'tells us if a bike is docked' do
    bike = subject.release_bike
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
