# code
require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end
  def dock(bike)
    fail 'Dockstation is full' if @bike
     # (not future proof code as dockstation capacity can only be 1)
    @bike = bike
  end
  # def bike
  #   @bike
  # end
end
