require_relative 'card'

SYMBOLS = [:heart, :diamond, :spade, :club]

CARD_COMBOS = {
  '2' =>  SYMBOLS,
  '3' =>  SYMBOLS,
  '4' =>  SYMBOLS,
  '5' =>  SYMBOLS,
  '6' =>  SYMBOLS,
  '7' =>  SYMBOLS,
  '8' =>  SYMBOLS,
  '9' =>  SYMBOLS,
  '10' => SYMBOLS,
  'J' =>  SYMBOLS,
  'Q' =>  SYMBOLS,
  'K' =>  SYMBOLS,
  'A' =>  SYMBOLS,
}

class Deck
  attr_reader :stack

  def initialize(stack = Deck.build_deck)
    @stack = stack
  end

  def draw_card
    @stack.shuffle!
    @stack.pop
  end

  def deal_hand
    @stack.shuffle!
     hand = []
     5.times { hand << @stack.pop }
     hand
  end

  def reset_deck
    @stack = Deck::build_deck
  end

  def self.build_deck
    stack = []

    CARD_COMBOS.each do |value, symbols|
      symbols.each do |symbol|
        if symbol == :heart || symbol == :diamond
          stack << Card.new(value, symbol, 'red')
        else
          stack << Card.new(value, symbol, 'black')
        end
      end
    end

    stack
  end

end
