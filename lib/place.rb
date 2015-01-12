class Place
  @@places = []

  define_method(:initialize) do |location|
    @location = location
  end

  define_method(:location) do
    @location
  end

  define_method(:save) do
    @@places.push(self)
  end

  define_singleton_method(:all) do
    @@places
  end

  define_singleton_method(:clear) do
    @@places = []
  end
end
