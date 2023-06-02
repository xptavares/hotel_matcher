module HotelMatcher
  class Matcher

    attr_accessor :hotel_name, :setup

    def initialize(hotel_name)
      @hotel_name = hotel_name
      @setup = HotelMatcher::Setup.new
    end

    def run
      results = setup.providers.map do |provider|
        provider.run(hotel_name)
      end

      puts results

      results
    end
  end
end