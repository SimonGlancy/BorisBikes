require_relative 'bike'

class DockingStation
DEFAULT_CAPACITY = 20

	attr_reader :bikes, :capacity

	def initialize(capacity=DEFAULT_CAPACITY)
		@capacity = capacity
		@bikes = [] #Array.new(20) {Bike.new}

	end

	def release_bike
		raise ("No bikes left, try again later") if empty?
		raise ("sorry this bike is broken") if working_bikes.length == 0 && broken_bikes.length > 0

		@bikes.delete((@bikes.select {|bike| bike.working? == true}).first)

	end

	def dock_bike(bike)
		raise ("Sorry dock is full, try again later") if full?
		@bikes << bike
	end

	def working_bikes
	@bikes.select {|bike| bike.working? == true}
	end

	def broken_bikes
	@bikes.select {|bike| bike.working? == false}
	end

	private

	def full?
		@bikes.length > @capacity
	end

	def empty?
		@bikes.length == 0
	end



end
