require "bike"

describe Bike do
  it "should respond to working? when called" do
  bike_1 = Bike.new
  expect(bike_1). to respond_to(:working?)
 end
end
