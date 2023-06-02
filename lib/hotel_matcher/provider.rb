module HotelMatcher
  class Provider
    attr_accessor :id, :name, :url

    def initialize(id, name, url)
      @id = id
      @name = name
      @url = url
    end
  end
end