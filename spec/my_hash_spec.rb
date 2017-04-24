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

  describe("#Length") do
    it("Returns the length of the hash") do
      test_hash = MyHash.new()
      test_hash.Store("kitten", "cute")
      expect(test_hash.Length()).to(eq(1))
    end
  end

  describe("#Merge") do
    it("Merges two hashes") do
      test_hash = MyHash.new()
      other_hash = MyHash.new()
      test_hash.Store("kitten", "cute")
      other_hash.Store("other_kitten", "other_cute")
      expect(test_hash.Merge(other_hash)).to(eq([["kitten", "cute"], ["other_kitten", "other_cute"]]))
    end
  end

end
