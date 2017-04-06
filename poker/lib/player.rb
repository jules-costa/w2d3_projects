require_relative 'hand'

class Player
  attr_accessor :player_hand, :pot

  def initialize(name)
    @name = name
    @player_hand = Hand.new
    @pot = 100
  end
end
