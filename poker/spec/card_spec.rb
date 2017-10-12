require "rspec"
require "card"

describe Card do
  subject(:card) { Card.new( 7, :diamonds ) }
  describe "#initialize" do
    it "accepts two symbols" do
      expect { card }.to_not raise_error
    end
    it "contains arguments passed" do
      expect(card.rank).to be(7)
      expect(card.suit).to be(:diamonds)
    end
  end
end
