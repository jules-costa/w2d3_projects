require_relative 'deck'

class Poker
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @game_cards = Deck.new
  end

  def play_turn
    deal_cards

    make_bets
    exchange_cards
    final_bets
    round_cleanup
  end

  def deal_cards
    @player_one.player_hand = @game_cards.deal_hand
    @player_two.player_hand = @game_cards.deal_hand
  end

end
