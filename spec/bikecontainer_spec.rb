require 'bikecontainer'
require 'docking_station'

shared_examples_for "a bikecontainer" do
  let(:bikecontainer) { described_class.new}
  #it { is_expected.to respond_to(:move).with(1).argument}
  #it { is_expected.to respond_to(:bikes)}
  #it { is_expected.to respond_to(:capacity)}

  context "have a capacity" do
    it "capacity is 20" do
      expect(bikecontainer.capacity).to eq(20)
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
        expect(subject.bikes).to eq([])
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
