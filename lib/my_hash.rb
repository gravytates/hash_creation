class MyHash
  @@pairs = []
  define_method(:initialize) do |key = nil, value = nil|
    @key = key
    @value = value
    self.myStore(@key, @value)
  end

  define_method(:myShow) do
    @@pairs
  end

  define_method(:myStore) do |key, value|
    @@pairs.push(key)
    @@pairs.push(value)
  end

  define_method(:myFetch) do |key|
    self.myShow[self.myShow.index(key).+(1)]
  end
end
