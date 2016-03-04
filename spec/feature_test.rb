require_relative '../lib/docking_station.rb'
require_relative '../lib/van.rb'

p 1
p station =  DockingStation.new
p 2
p van = Van.new
p 3
p van.collect_bikes(station)
p 4
p station.park_bike(Bike.new, false)
p 5
p station.park_bike(Bike.new)
p 6
p station.park_bike(Bike.new, false)
p 7.1
#p station.remove_broken_bikes
p 7.2
p station.bikes
p 7.3
p van.collect_bikes(station)
p 8
p station.bikes
p 9
p van.bikes
p 10
bike = Bike.new
p bike.working
p 11
p station.release_bike
p 12
p garage = Garage.new
p 13
p garage.collect_bikes(van)
p 13.1
p garage.bikes
p 14
p garage.working_bikes
p 15
p garage.bikes
p 16
p van.collect_working_bikes(garage)
p 17
p van.deposit_working_bikes(station)
p 18


# p station.park_bike(Bike.new)


# p station.release_bike

# p bike = station.release_bike
# p bike.working?
# p station.park_bike(bike)
#
# p station.park_bike(bike)
# p station.park_bike(bike) == station.bike

#p 20.times {station.park_bike Bike.new}
