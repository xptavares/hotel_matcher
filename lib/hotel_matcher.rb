# frozen_string_literal: true

require_relative "hotel_matcher/version"
require_relative "hotel_matcher/configuration"
require_relative "hotel_matcher/provider"
require_relative "hotel_matcher/provider/base"
require_relative "hotel_matcher/provider/booking"
require_relative "hotel_matcher/provider/holidaycheck"
require_relative "hotel_matcher/provider/tripadvisor"
require_relative "hotel_matcher/setup"
require_relative "hotel_matcher/matcher"

module HotelMatcher
  class Error < StandardError; end
  # Your code goes here...

  class << self
    # Instantiate the Configuration singleton
    # or return it. Remember that the instance
    # has attribute readers so that we can access
    # the configured values
    def configuration
      @configuration ||= Configuration.new
    end

    # This is the configure block definition.
    # The configuration method will return the
    # Configuration singleton, which is then yielded
    # to the configure block. Then it's just a matter
    # of using the attribute accessors we previously defined
    def configure
      yield(configuration)
    end
  end
end
