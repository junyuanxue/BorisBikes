require_relative "bike"

class DockingStation

  attr_accessor :bike

  def dock(bike)
    @bike = bike
  end

  def release_bike
    if @bike == nil
      raise 'No bikes are available'
    else
    Bike.new
    end
  end


end
