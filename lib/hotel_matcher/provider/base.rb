module HotelMatcher
  class Provider::Base
    attr_accessor :id, :name, :url

    def initialize(id, name, url)
      @id = id
      @name = name
      @url = url
    end

    def run(hotel_name)
      raise "should be implemented"
    end
  end
end