require_relative "bike"

class DockingStation

  attr_accessor :capacity
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if empty? 
    @bikes.pop
  end

  def dock(bike)
    raise "The docking station is full" if full?
    @bikes << bike
    bike
  end

  private

  def full?
    @bikes.size >= @capacity
  end

  def empty?
    @bikes.size == 0
  end

end
