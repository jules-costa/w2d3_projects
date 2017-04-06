require 'rspec'
require 'hand'

describe Hand do
  subject(:hand) { Hand.new }
  let(:high_hand) { [Card.new('2', :heart), Card.new('7', :heart),
    Card.new('4', :heart), Card.new('5', :heart), Card.new('J', :heart)]}

  describe '#initialize' do
    it 'initialize five_cards as an empty array' do
      expect(hand.five_cards).to eq([])
    end
  end

  describe '#high_card' do
    it 'returns highest single card in hand' do
      hand.five_cards = high_hand
      expect(hand.high_card.value).to eq('J')
    end
  end

  describe '#pair'

  describe '#two_pair'

  describe '#three_kind'

  describe '#straight'

  describe '#flush'

  describe '#full_house'

  describe '#four_kind'

  describe '#straight_flush'

end
