require "httparty" 
require "nokogiri"

module HotelMatcher
  class Provider::Tripadvisor < Provider::Base

    def initialize(id)
      super(id, 'tripadvisor', 'tripadvisor.com')
    end

    def run(hotel_name)
      # response = HTTParty.get("https://www.tripadvisor.com/Search?q=#{hotel_name}", { 
      #   headers: { 
      #     "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36" 
      #   }, 
      # })
      # document = Nokogiri::HTML(response.body)
      # puts document
      # puts document.css('div.result-title').first.values
    end
  end
end