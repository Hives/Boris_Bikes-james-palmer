require_relative 'docking_station'

class Bike
  attr_reader :bike
  def working?
    true
  end
  def docked?
    self == @bike
     # if @bike.nil?
     #   return false
     # else
     #   true
     # end
  end
end
