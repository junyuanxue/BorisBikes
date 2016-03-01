require_relative "bike"

class DockingStation

  attr_accessor :bike

  def dock(bike)
    raise "Docking Station full" if @bike
    @bike = bike
  end

  def release_bike
    raise 'No bikes available' unless @bike
    @bike
  end


end
