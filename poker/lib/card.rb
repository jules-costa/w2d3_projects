class Card
  attr_reader :value, :symbol

  def initialize(value, symbol)
    @value = value
    @symbol = symbol
  end

  def ==(other_card)
    @value == other_card.value
    @symbol == other_card.symbol
  end

  def <(other_card)
    @value < other_card.value
  end

  def to_s
    "#{value} of #{symbol}s"
  end

  # def random_card
  #   Card.new(random_val, random_suit)
  # end
end
