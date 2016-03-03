class DockingStation

  attr_reader :bike

  def release_bike
    raise "NO BIKES" unless @bike
    Bike.new

  end

  def park_bike(bike)
    @bike = bike
  end

end
