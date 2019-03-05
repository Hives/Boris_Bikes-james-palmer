 # test

require 'docking_station'

describe DockingStation do
  it 'creates new DockingStation' do
    expect(DockingStation.new)
  end

end

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
end
