require_relative 'hand'

class Player
  attr_accessor :player_hand, :pot

  def initialize(name)
    @name = name
    @player_hand = Hand.new
    @player_pot = 100
  end

  def place_bet
    puts "How much would you like to bet?"
    bet = gets.chomp.to_i
    raise 'Not enough $ to bet!' if bet > @player_pot
    player_pot -= bet
    bet
  end

  def trade_cards
    
  end
end
