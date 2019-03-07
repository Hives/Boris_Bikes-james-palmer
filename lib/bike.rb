require_relative 'docking_station'

class Bike

  def initialize
    @working = true
  end

  def working?
    @working
  end
  def docked?
    self == @bikes
     # if @bike.nil?
     #   return false
     # else
     #   true
     # end
  end

  def is_broken
    @working = false
  end
end
