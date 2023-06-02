# frozen_string_literal: true

RSpec.describe HotelMatcher do
  it "has a version number" do
    expect(HotelMatcher::VERSION).not_to be nil
  end

  describe HotelMatcher::Setup do
    let(:setup)  { HotelMatcher::Setup.new }
    it "has three providers" do
      expect(setup.providers.size).to eq 3
    end
  end

  describe HotelMatcher::Provider::Base do
    let(:base)  { HotelMatcher::Provider::Base.new(1, 'test', 'test.com') }
    it do 
      expect { base.run("test") }.to raise_error("should be implemented")
    end
  end

  describe HotelMatcher::Provider::Base do
    let(:provider)  { HotelMatcher::Provider::Holidaycheck.new(1) }
    let(:hotel_name) { "DoubleTree Hilton Amsterdam" }
    let(:result) do
      {
        status: :ok,
        link: "https://www.holidaycheck.de/hi/doubletree-by-hilton-amsterdam-centraal-station/8a65ed71-2c3d-343d-9d39-9e8c0211c938",
        provider: "HotelMatcher::Provider::Holidaycheck"
      }
    end
    it do 
      expect(provider.run(hotel_name)).to eq result
    end
  end
end
