require 'bikecontainer'
require 'docking_station'

shared_examples_for "a bikecontainer" do
  let(:bikecontainer) { described_class.new }

  it "has a default capacity when initialized" do
    expect(bikecontainer.capacity).to eq BikeContainer::DEFAULT_CAPACITY
  end

  describe "#capacity" do
    it "can be overridden on initialize" do
      random_capacity = Random.rand(100)
      subject = described_class.new random_capacity
      expect(subject.capacity).to eq random_capacity
    end
  end

  describe "#move" do
    let(:van){double(:van, :bikes => [])}
    context "moves bikes to destination" do
      it "bikes go from origin to van" do
        array = subject.bikes
        subject.move(van)
        expect(van.bikes).to eq(array)
      end
      it "bikes are removed from origin" do
        subject.move(van)
        expect(subject.bikes).to be_empty
      end
      it "only moves broken bikes when move_only_broken is true" do
        subject.move(van, true)
        expect(van.bikes).to all be_not_working
      end

    end
  end
end

describe DockingStation do
  it_behaves_like "a bikecontainer"
end

describe Van do
  it_behaves_like "a bikecontainer"
end

describe Garage do
  it_behaves_like "a bikecontainer"
end
