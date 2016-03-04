require_relative 'docking_station'
require_relative 'garage'

class Van

attr_reader :bikes

def initialize
  @bikes = []
end

def collect_bikes(station)
  station.broken_bikes.each {|bike| @bikes << bike}#.flatten
  station.remove_broken_bikes
end

def deposit_bikes
  @bikes.slice(0..@bikes.length)
end

def collect_working_bikes(garage)
  @bikes << garage.working_bikes
end

end
