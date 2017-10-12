require_relative "deck"
require_relative "player"

class Game

  attr_reader :deck, :players, :pot

  def initialize
    @deck = Deck.new
    @players = Array.new(5){Player.new}
    @pot = 0
  end
end
