require "docking_station"


describe DockingStation do

  it { is_expected.to respond_to :release_bike }
  describe "#release_bike" do
    it "raises an error when there are no bikes available" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end

    it "releases bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }
  describe "#dock" do
    it "raises an error when the Docking Station is full" do
      subject.dock(Bike.new)
      expect { subject.dock Bike.new }.to raise_error "Docking Station full"
    end
  end

  it { is_expected.to respond_to :bike }

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe "No bikes are available" do
    subject.bike = nil
    it "raises" do
      expect {subject.release_bike}.to raise_error
    end
  end

end
