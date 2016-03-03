require 'van'


describe Van do


  let(:station) {double :station, :bikes => [bike]}
  let(:bike) {double :bike, :working? => false}
  let(:garage) {double :garage, :garage_storage => []}



it '1 .van should collect from station and dock them in van' do
  subject.collect_broken_bikes(station)
  expect(subject.van_storage).not_to be_empty
end


it '2. garage accepts broken bikes' do
  subject.collect_broken_bikes(station)
    subject.deposit_broken_bikes(garage)
    expect(garage.garage_storage).not_to be_empty
  end


it '3. van should pick up all working bikes from garage' do

end

it '4. van should dock all working bikes at station ' do

end
end
