# frozen_string_literal: true

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

      HotelMatcher.configuration.after_run&.call(results)

      results
    end
  end
end
