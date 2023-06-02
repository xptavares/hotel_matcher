require "httparty" 

module HotelMatcher
  class Provider::Holidaycheck < Provider::Base

    def initialize(id)
      super(id, 'holidaycheck', 'holidaycheck.de')
    end

    def run(hotel_name)
      response = HTTParty.get("https://www.holidaycheck.de/svc/search-mixer/search?query=#{hotel_name}&tenant=hc-header&limit=1", { 
        headers: { 
          "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36" 
        }, 
      })
     
      document = JSON.parse(response.body)
      link = document['hotels']['entities'].first['landingLink']
      {
        status: :ok,
        link: "https://www.holidaycheck.de/hi/#{link}",
        provider: self.class.name
      }
    end
  end
end