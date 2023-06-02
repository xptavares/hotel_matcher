# frozen_string_literal: true

require "httparty"
require "nokogiri"

module HotelMatcher
  module Provider
    class Tripadvisor < Provider::Base
      def initialize(id)
        super(id, "tripadvisor", "tripadvisor.com")
      end

      def run(_hotel_name)
        # [TODO] tripadvisor Important news, I wasn't able to scraper the tripadvisor I thought about using the tripadvisor but I think  it isnt fair, BTW this class should be implemanted better in the future.

        # "https://www.tripadvisor.com/Search?q=DoubleTree Hilton Amsterdam"

        # "https://www.tripadvisor.com/Search?q=#{hotel_name}"

        # url = "https://www.tripadvisor.com/Search?geo=188590&q=#{hotel_name}&topIds=1946024&queryParsed=true&searchSessionId=2F2E97FE5D5670467E692C2312A638511685718047123ssid&sid=1A9F2E313C8E4900B548389375CE09621685718049612&blockRedirect=true"
        # response = HTTParty.get(url, {
        #   headers: {
        #     "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36"
        #   },
        # })
        # document = Nokogiri::HTML(response.body)
        # puts document
        # puts document.css('div.result-title').first.values

        {
          status: :error,
          provider: self.class.name
        }
      end
    end
  end
end
