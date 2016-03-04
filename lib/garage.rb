class Garage
attr_reader :bikes

  def initialize
    @bikes = []
  end

  def collect_bikes(van)
    van.deposit_bikes.each {|bike| @bikes << bike}
  end

  def working_bikes
    @bikes.map! { |bike|
      bike.fix
      bike}
  end

end
