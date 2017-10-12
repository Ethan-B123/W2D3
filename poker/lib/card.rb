class Card
  VALUES = { 1 => "1", 2 => "Two",  3 => "Three", 4 => "Four", 5 => "Five",
    6 => "Six", 7 => "Seven", 8 => "Eight", 9 => "Nine", 10 => "Ten",
    11 => "Jack", 12 => "Queen", 13 => "King"}

  SUITS = [:spades, :clubs, :hearts, :diamonds]
  
  attr_reader :rank, :suit

  def initialize(rank,suit)
    @rank = rank
    @suit = suit
    #@something = VALUES[something]
  end

  def to_s
    VALUES[self.rank]
  end
  # def self.values
  #   VALUES.keys
  # end
end
