# frozen_string_literal: true

module HotelMatcher
  module Provider
    class Base
      attr_accessor :id, :name, :url

      def initialize(id, name, url)
        @id = id
        @name = name
        @url = url
      end

      def run(_hotel_name)
        raise "should be implemented"
      end
    end
  end
end
