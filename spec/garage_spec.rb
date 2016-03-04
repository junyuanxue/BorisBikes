require 'garage'

describe Garage do

  let(:van){double :van, :collect_from_dock => [1,2,3]}
    it 'should call fix method each broken bike' do
      subject.bikes.each {|bike| expect(bike).to receive(:fix)}
    end
end
