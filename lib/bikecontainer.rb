module BikeContainer
  DEFAULT_CAPACITY = 20
  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end
  attr_accessor :bikes
  attr_reader :capacity

  def move(destination, move_only_broken=false)
    @bikes.each{|bike|
      if move_only_broken == true
        destination.bikes << bike if !bike.working?
      else
        destination.bikes << bike
      end
    }
    @bikes.clear
  end




end
