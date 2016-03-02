require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
      raise "There are no bikes left" unless @bike
      @bike
  end

  def dock(bike)
      raise "The docking station is full" if @bike
    @bike = bike
  end

end
