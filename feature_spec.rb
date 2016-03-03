require_relative './lib/dockingstation.rb'

station = DockingStation.new
station2 = DockingStation.new(40)

20.times { station.dock_bike(Bike.new)}
p station.bikes

station.release_bike
broken_bike = (Bike.new).broken
working_bike = Bike.new

bike = station.release_bike

p bike
p station.capacity
