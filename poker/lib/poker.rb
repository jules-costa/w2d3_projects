require_relative 'deck'

class Poker
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @game_cards = Deck::build_deck
    @game_pot = 0
  end

  def play_turn
    deal_cards
    show_cards

    make_bets
    exchange_cards

    final_bets
    round_cleanup
  end

  def deal_cards
    @player_one.player_hand = @game_cards.deal_hand
    @player_two.player_hand = @game_cards.deal_hand
  end

  def make_bets
    begin
       first_bet = @player_one.place_bet
    rescue
      retry
    end

    begin
      second_bet = @player_two.place_bet
    rescue
      retry
    end

    game_pot += (first_bet + second_bet)
  end

  def exchange_cards
    playe
  end

end
