module HotelMatcher
  class Setup

    attr_accessor :providers

    def initialize
      @providers = []
      providers << HotelMatcher::Provider.new(1, 'tripadvisor', 'tripadvisor.com')
      providers << HotelMatcher::Provider.new(2, 'booking', 'booking.com')
      providers << HotelMatcher::Provider.new(3, 'holidaycheck', 'holidaycheck.de')
    end
  end
end