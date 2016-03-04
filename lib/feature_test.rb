require_relative 'docking_station'
require_relative 'van'
require_relative 'garage'
require_relative 'bike'

station = DockingStation.new
garage = Garage.new
van = Van.new
station.dock(Bike.new)
broke = Bike.new
broke.report_broken
station.dock(broke)
p station.docked_bikes
van.collect_from_dock(station.bike_to_van, garage)


van.return_to_dock(garage.load_fixed, station)

p garage.broken_storage
#p garage.fixed
p station.docked_bikes
