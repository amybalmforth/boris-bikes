require "docking_station"

describe DockingStation do

  context "When testing the dockingstation class" do

    it "raises an error when there is no bike to be released" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end

    it "releases a bike when release_bike method is called" do
      hanry = Bike.new
      subject.dock(hanry)
      expect(subject.release_bike).to eq hanry
    end

 end

  context "when testing dock method" do

    it "raises an error when full" do
      subject.dock(Bike.new)
      expect { subject.dock Bike.new }.to raise_error "Station full"
    end


    it "stores and returns the docked bike when dock action called" do
      irene = Bike.new
      expect(subject.dock(irene)).to eq irene
    end

    it "return the bike that's just docked "do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq (bike)
    end

  end

end
