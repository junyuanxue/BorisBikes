class Van

  include BikeContainer
  def collect_from_dock(sucky_bikes, garage)
    sucky_bikes.each {|bike| garage.broken_storage << bike}
  end

  def return_to_dock(fixed_bikes, station)
    fixed_bikes.each {|bike|
      station.docked_bikes << bike
      }
  end

end



   # since classess cannot access each other directly, we need a method within van and docking station that can make requests across each other and receive each other's inputs and outputs
