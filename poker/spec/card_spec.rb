require 'rspec'
require 'card'

describe Card do
  subject(:card) { Card.new('2', :heart) }

  describe '#initialize' do
    it 'assigns a value' do
      expect(card.value).to eq('2')
    end

    it 'assigns a symbol' do
      expect(card.symbol).to eq(:heart)
    end
  end

end
