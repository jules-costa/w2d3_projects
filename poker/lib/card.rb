class Card
  attr_reader :value, :symbol, :color

  def initialize(value, symbol, color)
    @value = value
    @symbol = symbol
    @color = color
  end

  def ==(other_card)
    @value == other_card.value
    @symbol == other_card.symbol
    @color == other_card.color
  end  
end
