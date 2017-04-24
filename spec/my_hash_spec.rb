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

end
