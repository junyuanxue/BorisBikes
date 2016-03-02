require_relative "bike"

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    raise "There are no bikes left" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise "The docking station is full" if @bikes.size >= 20
    @bikes << bike
    bike
  end

end
