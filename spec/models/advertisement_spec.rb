require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "New advertisement Title", body: "New Advertisement Body", price: 1.00) }

  describe "attributes" do
    it "has title, body and price attributes" do
      expect(advertisement).to have_attributes(title: "New advertisement Title", body: "New Advertisement Body", price: 1.00)
    end
  end
end
