require 'garage'

describe Garage do
  it "1 stores bikes delivered by the van" do
    station =  DockingStation.new
    van = Van.new
    station.park_bike(Bike.new, false)
    van.collect_bikes(station)
    subject.collect_bikes(van)
    expect(subject.bikes.empty?).to be false
end

  describe '#working_bikes' do
    it "returns an array of fixed bikes" do
    station =  DockingStation.new
    van = Van.new
    station.park_bike(Bike.new, false)
    van.collect_bikes(station)
    subject.collect_bikes(van)
    expect(subject.working_bikes.empty?).to be false
    end
  end
end
