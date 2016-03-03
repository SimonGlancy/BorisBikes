require 'dockingstation'

describe DockingStation do
	it {expect(subject).to respond_to :release_bike }

	let(:bike) {double :bike}
	it "checks whether release_bike gets a bike" do
		station = DockingStation.new
		allow(bike).to receive(:working?).and_return(true)
		station.dock_bike(bike)
	expect(station.release_bike).to eq(bike)
	end

	it 'expects bikes to be working' do
		allow(bike).to receive(:working?).and_return(true)
		expect(bike.working?).to eq (true)
	end

	it {expect(subject).to respond_to(:dock_bike).with(1).argument }

	it 'expect to see a bike' do

		expect(subject.bikes).to be_a(Array)
	end

	#it 'expect to return the same bike' do
	#	dock = DockingStation.new
	#	bike = dock.bike
	#	expect(dock.dock_bike(bike)).to eq(bike)
	#end

	it 'expects error when no bikes' do
			expect {
				while true
				subject.release_bike
			  end
				}.to raise_error(RuntimeError)
	end

	describe "#dock_bike" do

		it 'expects error when dock is full' do
			expect {
				while true
				subject.dock_bike(bike)
				end
				}.to raise_error(RuntimeError)
		end

  it 'accepts a specific capacity' do

		expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
	end



	it 'expects error when trying to release a broken bike' do
		allow(bike).to receive(:broken).and_return(true)
		allow(bike).to receive(:working?).and_return(false)
		bike.broken
		subject.dock_bike(bike)

		expect {subject.release_bike}.to raise_error(RuntimeError, "sorry this bike is broken")
	end


	end



end
