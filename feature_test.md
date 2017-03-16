require './lib/docking_station.rb'
require './lib/bike.rb'
station_LB = DockingStation.new
bike_56 = station_LB.release_bike
station_LB.dock_bike(bike_56)
