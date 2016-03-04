require_relative 'bike'
require_relative 'garage'
require_relative 'van'

class DockingStation
  include BikeContainer
  Default_capacity = 20
  attr_accessor :Default_capacity, :capacity, :docked_bikes, :broken_bikes

  #def initialize(capacity=Default_capacity)
    #@capacity = capacity
    #@docked_bikes = []
    #@broken_bikes = []
  #end

  def release_bike
    if empty? || @bikes.last.working == false
      raise "no bikes available"
    else
      @bikes.pop
    end
  end

  def dock(bike_name)
    if full?
      raise 'station is full'
    else
      @bikes << bike_name
      bike_name
    end
  end

  def bike_to_van
    broken_bikes = []
    @bikes.each do |bike|
      if !bike.working
        broken_bikes << bike
        @bikes.delete bike
      end
    end
    broken_bikes
  end

  def dock_status
    @bikes == 0 ? "empty" : "#{@bikes.length} bikes"
  end

  def bike
    @bikes.last
  end


  private

  def full?
    @bikes.length == @capacity ? true : false
  end

  def empty?
    @bikes.length == 0
  end
end
