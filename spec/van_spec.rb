require 'van'

describe Van do
  let(:garage) {double :garage, :broken_storage => []}
  describe "#move_to_garage" do
    it 'should move broken bikes to the garage' do
      sucky_bikes = [1,2,3]
      subject.move_to_garage(sucky_bikes, garage)
      expect(garage.broken_storage).to eq sucky_bikes
    end
  end

=begin
  it "should move fixed bikes to the docking station" do
    station = DockingStation.new
    sucky_bikes = subject.collect_from_dock(station.bike_to_van)
    garage = Garage.new
    ok_bike = garage.fixed(sucky_bikes)
    expect(subject.return_to_dock ok_bike).to all be_working
  end
=end
end
