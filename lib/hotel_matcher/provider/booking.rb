# frozen_string_literal: true

require "httparty"
require "nokogiri"

module HotelMatcher
  module Provider
    class Booking < Provider::Base
      def initialize(id)
        super(id, "booking", "booking.com")
      end

      def run(hotel_name)
        response = HTTParty.get("https://www.booking.com/searchresults.en-us.html?ss=#{hotel_name}&label=gen173nr-1FCAQoggI49ANIM1gEaLsBiAEBmAExuAEZyAEP2AEB6AEB-AECiAIBqAIDuAKv-uejBsACAdICJGM2MDY1OWJjLWE4M2QtNGUxZS1iZmQ2LTZkODc3MjU2Nzc2ZNgCBeACAQ&aid=304142&lang=en-us&sb=1&src_elem=sb&src=searchresults&dest_id=288883&dest_type=hotel&ac_position=0&ac_click_type=b&ac_langcode=en&ac_suggestion_list_length=2&search_selected=true&search_pageview_id=8e9966177fe2002e&ac_meta=GhA4ZTk5NjYxNzdmZTIwMDJlIAAoATICZW46G0RvdWJsZVRyZWUgSGlsdG9uIEFtc3RlcmRhbUAASgBQAA%3D%3D&checkin=2023-06-10&checkout=2023-06-20&group_adults=2&no_rooms=1&group_children=0&sb_travel_purpose=leisure", {
                                  headers: {
                                    "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36"
                                  }
                                })

        document = Nokogiri::HTML(response.body)
        link = document.css('a[data-testid="title-link"]').map { |link| link["href"] }.first

        {
          status: :ok,
          link: link,
          provider: self.class.name
        }
      end
    end
  end
end
