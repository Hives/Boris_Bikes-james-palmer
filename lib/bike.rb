require_relative 'docking_station'

class Bike

  def working?
    true
  end
  def docked?
    self == @bikes
     # if @bike.nil?
     #   return false
     # else
     #   true
     # end
  end
end
