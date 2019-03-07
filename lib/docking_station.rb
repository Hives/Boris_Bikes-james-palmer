# code
require_relative 'bike'

class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes
  end
  def dock(bike)
    fail 'Dockstation is full' if full? #capacity = 20
    @bikes.push(bike)
  end
  # def bike
  #   @bike
  # end

  private

  def full?
    @bikes.length == DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
