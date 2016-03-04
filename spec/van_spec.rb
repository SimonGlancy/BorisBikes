require 'van'

describe Van do
   let(:bike) { double :bike , :working => false}
  let(:station) {double :station , :bikes => [bike]}

  it '1. when collect_bikes is called the van is not empty' do
    #allow(station).to receive(:broken_bikes).and_return(bike)
    station =  DockingStation.new
    station.park_bike(Bike.new, false)
    subject.collect_bikes(station)
    expect(subject.bikes.empty?).to be(false)
  end

  it '2. when deposit_bikes is called then the van will be empty' do
    subject.deposit_bikes
    expect(subject.bikes.empty?).to be true
  end

  describe '#collect_working_bikes' do
  let(:bike) { double :bike, :working => true}
  let(:garage) {double :garage, :bikes => bike}


    it '3. when collect_working_bikes is called the van is not empty' do
    #allow(station).to receive(:broken_bikes).and_return(bike)
    allow(garage).to receive(:working_bikes).and_return(bike)

    subject.collect_working_bikes(garage)
    expect(subject.bikes.empty?).to be(false)
    end

  end
end
