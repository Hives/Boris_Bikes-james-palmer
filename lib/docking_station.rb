# code
require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes
  end
  def dock(bike)
    fail 'Dockstation is full' if @bikes.length == 20 #capacity = 20
     # (not future proof code as dockstation capacity can only be 1)
    @bikes.push(bike)
  end
  # def bike
  #   @bike
  # end
end
