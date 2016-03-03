require 'garage'



describe Garage do

  let(:van) {double :van, :bikes => [bike]}
  let(:bike) {double :bike, :working? => false}


xit '1 .garage should accept broken bikes from van' do
allow(garage)
  garage = Garage.new
  van.deposit_broken_bikes(garage)
  expect(garage.garage_storage).not_to be_empty
end
end
