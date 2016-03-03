require_relative 'dockingstation'

class Van < DockingStation

attr_reader :van_storage

  def initialize
    @van_storage = []
  end

  def collect_broken_bikes(station)
    station.bikes.each do |bike|

      if !bike.working?
      @van_storage << bike
      station.bikes.delete(bike)
      end

    end
  end

  def deposit_broken_bikes(garage)
    @van_storage.each do |bike|
    garage.garage_storage << bike
    end
  end

end
