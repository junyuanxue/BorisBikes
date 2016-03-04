require_relative 'bike'
require_relative 'van'

class Garage

  attr_reader :broken_storage

  def initialize
    @broken_storage = []
  end

  def unload(sucky_bikes)
    @broken_storage = sucky_bikes
  end

  def load_fixed
    fixed_array = fixed
    @broken_storage.clear
    fixed_array
  end

  def fixed
    @broken_storage.map { |bike|
      bike.fix
      bike
    }
  end

end
