require 'rspec'
require 'deck'

describe Deck do
  subject(:deck) { Deck.new }

  describe '#initialize' do
    it 'sets deck to new deck object' do
      expect(deck.stack).to eq(Deck::build_deck)
    end
  end

  describe '::build_deck' do
    it 'returns array of length 52' do
      expect(Deck::build_deck.count).to eq(52)
    end

    it 'returns array of Cards' do
      expect(Deck::build_deck.all? { |el| el.is_a? Card  }).to eq(true)
    end
    #it 'returns shuffled deck'
  end

  describe '#draw_card' do
    it 'decreases stack count by 1' do
      deck.draw_card
      expect(deck.stack.count).to eq(51)
    end

    it 'returns random card' do
      
    end
  end
end
