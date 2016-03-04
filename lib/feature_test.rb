require_relative 'docking_station'
require_relative 'van'
require_relative 'garage'
require_relative 'bike'
require_relative 'bikecontainer'

station = DockingStation.new
garage = Garage.new
van = Van.new
station.dock(Bike.new)
broke = Bike.new
broke.report_broken
station.dock(broke)
p station.move(van, true)
p van.bikes
