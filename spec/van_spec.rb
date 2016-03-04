require 'van'

describe Van do
  let(:garage) {double :garage, :broken_storage => []}
  let(:garage_full){double :garage_full, :fixed => [1,2,3]}
  let(:station){double :station, :docked_bikes => []}

  describe "#move_to_garage" do
    it 'should move broken bikes to the garage' do
      sucky_bikes = [1,2,3]
      subject.move_to_garage(sucky_bikes, garage)
      expect(garage.broken_storage).to eq sucky_bikes
    end
  end

  describe "#return_to_dock" do
    it "should move fixed bikes to the docking station" do
      subject.return_to_dock(garage_full.fixed, station)
      expect(station.docked_bikes).to eq [1,2,3]
    end
  end


end
