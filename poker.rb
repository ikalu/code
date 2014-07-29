class Card
  RANKS = %w{A 2 3 4 5 6 7 8 9 T J Q K}
  SUITS = %w{S H C D}

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{RANKS[rank]}#{SUITS[suit]}"
  end
end

class Deck
  attr_reader :card

  def initialize(cards)
    @card = cards
  end

  def shuffle
    card.shuffle!
  end

  def deal
    card.pop(5)
  end

end

class Player
  attr_reader :card

  def initialize(cards)
    @card = cards
  end

end

ranks = Card::RANKS
suits =  Card::SUITS

# Generate all 52 cards
cards = []
suits.product(ranks) do |card|
  cards << card.join.to_s
end
#puts cards

deck = Deck.new(cards)
#puts deck.shuffle
Puts deck.deal

