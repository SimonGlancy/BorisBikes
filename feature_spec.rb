require_relative './lib/dockingstation.rb'
require_relative './lib/van.rb'
require_relative './lib/garage.rb'

#station = DockingStation.new
station = DockingStation.new(5)
van = Van.new
garage = Garage.new

5.times { station.dock_bike(Bike.new)}

bike = station.release_bike
bike.broken
station.dock_bike(bike)


p station.bikes

van.collect_broken_bikes(station)

van.deposit_broken_bikes(garage)
#p station.working_bikes
#p station.broken_bikes
p van

p station.bikes
p van.van_storage
p garage.garage_storage
