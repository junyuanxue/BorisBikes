module BikeContainer
  DEFAULT_CAPACITY = 20
  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end
  attr_accessor :bikes
  attr_reader :capacity

  def move(destination)
    @bikes.each{|bike|
      destination.bikes << bike
    }
    @bikes.clear
  end




end
