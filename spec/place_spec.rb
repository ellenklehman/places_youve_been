require('rspec')
require('place')

describe(Place) do
    before() do
    Place.clear()
  end

  describe('#initialize') do
    it("is initialized with a location") do
      test_place = Place.new("Bermuda")
      expect(test_place).to(be_an_instance_of(Place))
    end
  end

  it("lets you read the location out") do
    test_place = Place.new("Bermuda")
    expect(test_place.location()).to(eq("Bermuda"))
  end

  describe('.all') do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a place to the array of saved places") do
      test_place = Place.new("Bahamas")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved places") do
      Place.new("Bahamas").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
