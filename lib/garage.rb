require_relative 'bike'
require_relative 'van'

class Garage
  include BikeContainer

  def fixed
    @bikes.map { |bike|
      bike.fix
      bike
    }
  end
end
