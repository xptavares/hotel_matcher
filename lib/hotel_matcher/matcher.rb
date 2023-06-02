module HotelMatcher
  class Matcher

    attr_accessor :hotel_name, :setup

    def initialize(hotel_name)
      @hotel_name = hotel_name
      @setup = HotelMatcher::Setup.new
    end

    def run
      puts setup.providers
    end
  end
end