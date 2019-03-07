 # test

require 'docking_station'

describe DockingStation do
  it 'creates new DockingStation' do
    expect(DockingStation.new)
  end

  it {is_expected.to respond_to(:release_bike)}
  it {is_expected.to respond_to(:dock).with(1).argument }


  # it 'creates new working bike' do
  #   bike = subject.release_bike
  #   expect(bike). to be_working
  # end

  it 'docks a bike' do
    # bike = subject.release_bike
    bike = Bike.new  # release_bike no longer creates bike
    expect(subject.dock(bike)).to eq [bike]
  end

  it 'tells us if a bike is docked' do
    # bike = subject.release_bike
    bike = Bike.new # release_bike no longer creates bike
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq [bike]
    end
    it 'raises an error when there are no bikes available' do
      # don't need to dock a bike first
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end

  end

  describe '#dock' do
    it 'raises an error if dock capacity is full' do
      # bike = Bike.new
      20.times{subject.dock(Bike.new)} # changed test capacity to 20
      bike = Bike.new # override to create > 1 instance variables
      expect{subject.dock(bike)}.to raise_error 'Dockstation is full'
    end
  end

end
