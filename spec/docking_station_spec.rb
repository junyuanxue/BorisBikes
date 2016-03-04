require 'docking_station'


describe DockingStation do

  let(:bike) { double :bike }

  describe "#release_bike" do
    it 'expects instance of bike class' do
      bike = double(:bike, working: true)
      subject.dock bike
      expect(subject.release_bike).to eq bike
    end

    it 'should raise an error if there are no bikes' do
      expect{subject.release_bike while true}.to raise_error(RuntimeError)
    end
end

  describe "#dock" do
    it 'dock the bike' do
      expect(subject.dock bike).to eq bike
    end

    it 'should raise an error if station is full' do
      expect{subject.dock double(:bike) while true}.to raise_error(RuntimeError)
    end
  end

end
