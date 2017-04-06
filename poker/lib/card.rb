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
end
