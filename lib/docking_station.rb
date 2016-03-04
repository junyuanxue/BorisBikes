require_relative 'bike'
require_relative 'garage'
require_relative 'van'

class DockingStation
  include BikeContainer

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
end
