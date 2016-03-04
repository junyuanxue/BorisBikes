require 'van'

describe Van do
  let(:garage) {double :garage, :broken_storage => []}
<<<<<<< HEAD
  describe "#move_to_garage" do
=======
  let(:garage_full){double :garage_full, :fixed => [1,2,3]}
  let(:station){double :station, :docked_bikes => []}
  describe "#collect_from_dock" do
>>>>>>> a4f134cbae99a0ce7c04315c6b5c6cc2cb9b512c
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
