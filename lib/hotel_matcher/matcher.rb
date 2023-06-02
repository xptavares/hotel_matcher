module HotelMatcher
  class Matcher

    attr_accessor :hotel_name

    def initialize(hotel_name)
      @hotel_name = hotel_name
    end

    def run
      puts "here"
    end
  end
end