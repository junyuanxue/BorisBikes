require_relative "bike"

class DockingStation

  attr_reader :bike


  def dock_bike
  end

  def dock_empty?
  end

  def release_bike
    Bike.new
  end
end
