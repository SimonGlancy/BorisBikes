require './lib/docking_station.rb'
require './lib/bike.rb'

p station =  DockingStation.new
p bike = Bike.new
p station.park_bike(bike, false)
p bike.working
p station.release_bike
# p station.park_bike(Bike.new)


# p station.release_bike

# p bike = station.release_bike
# p bike.working?
# p station.park_bike(bike)
#
# p station.park_bike(bike)
# p station.park_bike(bike) == station.bike

#p 20.times {station.park_bike Bike.new}
