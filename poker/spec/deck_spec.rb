require 'rspec'
require 'deck'

describe Deck do
  subject(:deck) { Deck.new }
  describe "#initialize" do
    it "generates 52 cards" do
      expect(deck.cards.length).to eq(52)
    end
    it "generates unique card" do
      expect(deck.cards.uniq{ |card| [card.rank, card.suit] }).to eq(deck.cards)
    end
    it "generates shuffled cards" do
      expect(deck.cards.sort_by { |card| card.rank } ).to_not eq(deck.cards)
    end
  end
  describe "#draw" do
    let(:card) { deck.draw }

    it "returns a card" do
      expect(card).to be_instance_of(Card)
    end

    it "subtracts a card from the deck" do
      card
      expect(deck.cards.length).to be(51)
    end
  end
end
