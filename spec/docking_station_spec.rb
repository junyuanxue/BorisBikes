require 'docking_station'
require 'bike'

describe DockingStation do
    it { is_expected.to respond_to(:release_bike)}
    it 'expects bikes to be working' do
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it { is_expected.to respond_to(:dock).with(1).argument}
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'bike properly docked' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

end
