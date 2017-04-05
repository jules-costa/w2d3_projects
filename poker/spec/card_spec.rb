require 'rspec'
require 'card'

describe Card do
  subject(:card) { Card.new(2, :heart, 'red') }

  describe '#initialize' do
    it 'assigns a value' do
      expect(card.value).to eq(2)
    end

    it 'assigns a symbol' do
      expect(card.symbol).to eq(:heart)
    end

    it 'assigns a color' do
      expect(card.color).to eq('red')
    end
  end

end
