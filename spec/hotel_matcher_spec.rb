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
end
