require('rspec')
require('my_hash.rb')

describe(MyHash) do

  describe("#Fetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.Store("kitten", "cute")
      expect(test_hash.Fetch("kitten")).to(eq("cute"))
    end
  end

  describe("#HasKey") do
    it("Checks if a given key exists within the hash") do
      test_hash = MyHash.new()
      test_hash.Store("kitten", "cute")
      expect(test_hash.HasKey("kitten")).to(eq(true))
    end
  end

  describe("#HasValue") do
    it("Checks if a given value exists within the hash") do
      test_hash = MyHash.new()
      test_hash.Store("kitten", "cute")
      expect(test_hash.HasValue("cute")).to(eq(true))
    end
  end

  describe("#Store") do
    it("Stores a key value pair within the hash") do
      test_hash = MyHash.new()
      test_hash.Store("kitten", "cute")
      expect(test_hash.Show()).to(eq([["kitten", "cute"]]))
    end
  end

end
