require_relative 'bike'
require_relative 'van'

class Garage
  include BikeContainer

  #attr_reader :bikes

  #def initialize
  #  @broken_storage = []
  #end

  def unload(sucky_bikes)
    @bikes = sucky_bikes
  end

  def load_fixed
    fixed_array = fixed
    @bikes.clear
    fixed_array
  end

  def fixed
    @bikes.map { |bike|
      bike.fix
      bike
    }
  end

end
