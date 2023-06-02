module HotelMatcher
  class Provider::Booking < Provider::Base

    def initialize(id)
      super(id, 'booking', 'booking.com')
    end

    def run(hotel_name)
      
    end
  end
end