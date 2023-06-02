# frozen_string_literal: true

require_relative "hotel_matcher/version"
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
end
