require_relative 'bike'
require_relative 'garage'
require_relative 'van'

class DockingStation
  Default_capacity = 20
  attr_accessor :Default_capacity, :capacity, :docked_bikes, :broken_bikes


  def initialize(capacity=Default_capacity)
    @capacity = capacity
    @docked_bikes = []
    @broken_bikes = []
  end

  def release_bike
    if empty? || @docked_bikes.last.working == false
      raise "no bikes available"
    else
      @docked_bikes.pop
    end
  end

  def dock(bike_name)
    if full?
      raise 'station is full'
    else
      @docked_bikes << bike_name
      bike_name
    end
  end

  def bike_to_van
    @docked_bikes.each do |bike|
      if !bike.working
        @broken_bikes << bike
        @docked_bikes.delete bike
      end
    end
    @broken_bikes
  end

  def unload_from_van(fixed_bikes)
    fixed_bikes.each do |bike|
      if bike.working
        @docked_bikes << bike
        @broken_bikes.delete bike
      end
    end
  end

  def dock_status
    @docked_bikes == 0 ? "empty" : "#{@docked_bikes.length} bikes"
  end

  def bike
    @docked_bikes.last
  end


  private

  def full?
    @docked_bikes.length == @capacity ? true : false
  end

  def empty?
    @docked_bikes.length == 0
  end
end
