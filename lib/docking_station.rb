require "./lib/bike"

class DockingStation

attr_reader :bike

def initialize
  @bikes = []
end

def release_bike
  fail "No bikes available" unless @bike
  @bike
end

def dock(bike)
  fail "Station full" if @bike
  @bike = bike
end

end
