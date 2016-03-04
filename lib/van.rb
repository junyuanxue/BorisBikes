require_relative 'bikecontainer'

class Van

  include BikeContainer

end



   # since classess cannot access each other directly, we need a method within van and docking station that can make requests across each other and receive each other's inputs and outputs
