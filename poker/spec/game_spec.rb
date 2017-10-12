require 'rspec'
require 'game'

describe Game do
  subject(:game){Game.new}
  #deck = double("deck", draw: Card.instance)
  describe "#initialize" do
    it "makes a deck of cards" do
      expect(game.deck).to be_instance_of(Deck)
    end
    it "makes a list of players" do
      expect(game.players.length).to eq(5)
    end
    it "makes an empty pot" do
      expect(game.pot).to eq(0)
    end
  end
  # describe "#play" do
  #   it "deals 5 cards to each player"
  # end
end
