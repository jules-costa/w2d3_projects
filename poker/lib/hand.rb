CARD_VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)

class Hand
  attr_accessor :five_cards

  def initialize
    @five_cards = []
  end

  def high_card
    highest = @five_cards.shift

    @five_cards.each do |card|
      if CARD_VALUES.index(card.value) > CARD_VALUES.index(highest.value)
        highest = card
      end
    end

    highest
  end
end
