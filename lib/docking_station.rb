require "./lib/bike"

class DockingStation
  def release_bike
    fail "No bikes available" unless @bike
    @bike
    #return Bike.new
  end

  #def dock
    # end

# Use an instance variable to store the bike
# in the 'state' of this instance


  def dock(bike)
    @bike = bike
  end

  #the above dock method is actually a intialisze
  #def intialise(bike)
  # @bike = bike
   #end
   #but if use initalise, then it's private
   #so you have to add a attr_writer: bike

  # def bike
  #   @bike
  # end

  # this will essentially write the bike mtd above
# on any instances of this class
attr_reader :bike

end
