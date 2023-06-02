# frozen_string_literal: true

module HotelMatcher
  class Setup
    attr_accessor :providers

    def initialize
      @providers = []
      providers << HotelMatcher::Provider::Booking.new(1)
      providers << HotelMatcher::Provider::Holidaycheck.new(2)
      providers << HotelMatcher::Provider::Tripadvisor.new(3)
    end
  end
end
