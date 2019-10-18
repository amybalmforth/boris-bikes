require "docking_station"

describe DockingStation do

  context "When testing the dockingstation class" do
#Here the one-liner syntax goes
  #it {is_expected.to respond_to :release_bike}
    it "raises an error when there is no bike to be released" do
      expect { subject.release_bike }.to raise_error
    end

    it "releases a bike when release_bike method is called" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    #it "should release bike when the release_bike method is called" do
      #docking_station_1 = DockingStation.new
      #expect(docking_station_1). to respond_to(:release_bike)
 end

 # it "dock a bike" do
 #   expect(subject). to respond_to(:dock).with(1).argument
 # end


# both storing something and permitting access to read
#that thing.
#It's so common that there is a pretty standard way of doing it
#: using attributes, or instance variables.

  context "when testing dock method" do

    it "raises an error when when there is already a bike" do
      expect { subject.dock(bike) }.to raise_error
    end


    it "stores and returns the docked bike when dock action called" do
      bike = Bike.new #Here we need it to return the bike we just docked
      expect(subject.dock(bike)).to eq bike

    end

    it "return the bike that's just docked "do
      bike = Bike.new
      # docked_bike = DockingStation.new.dock(bike)
      subject.dock(bike)
      #Here has to call the .dock method so .bike can return bike
      expect(subject.bike).to eq (bike)
    end

  end

end
