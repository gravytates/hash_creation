class MyHash
  define_method(:initialize) do |key = nil, value = nil|
    @pairs = []
    unless key.==(nil) || value.==(nil)
      @pairs.push([key, value])
    end
  end

  define_method(:Show) do
    @pairs
  end

  define_method(:Length) do
    self.Show.length
  end

  define_method(:Store) do |key, value|
    @pairs.push([key, value])
  end

 define_method(:Fetch) do |key|
    result = "No key found"
    search = key
    pairs = self.Show
    pairs.each do |pair|
      if pair[0].==(search)
        result = pair[1]
      end
    end
    result
  end

  define_method(:HasKey) do |key|
    result = false
    search = key
    pairs = self.Show
    pairs.each do |pair|
      if pair[0].==(search)
        result = true
      end
    end
    result
  end

  define_method(:HasValue) do |value|
    result = false
    search = value
    pairs = self.Show
    pairs.each do |pair|
      if pair[1].==(search)
        result = true
      end
    end
    result
  end

  define_method(:Merge) do |hash|
    hash.Show.each do |pair|
      @pairs.push(pair)
    end
  end

end

test_hash = MyHash.new
test_hash.Store("test_key", "test_value")
test_hash.Store("other_key", "other_value")
test_hash.Store("third_key", "third_value")
other_hash = MyHash.new
other_hash.Store("test_key", "test_value")
other_hash.Store("other_key", "other_value")
other_hash.Store("third_key", "third_value")
