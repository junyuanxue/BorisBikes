require 'garage'

describe Garage do
  #let(:station){double :station, :docked_bikes => []}
  let(:van){double :van, :collect_from_dock => [1,2,3]}
    it 'should call fix method each broken bike' do
      subject.broken_storage.each {|bike| expect(bike).to receive(:fix)}
    end

  describe "#load_fixed" do
    it "returns a fixed bike array" do
      expect(subject.load_fixed).to eq subject.fixed
    end

    it "clears its storage" do
      van.collect_from_dock([1,2,3], subject)
      subject.load_fixed
      expect(subject.broken_storage).to eq([])
    end

  end
end
