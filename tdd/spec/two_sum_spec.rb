require 'rspec'
require 'two_sum'

describe Array do
  subject(:array) { Array.new }

  describe '#two_sum' do
    let(:string_array) { ['1', '2', '3'] }

    it 'raises an error if array includes non integer values' do
      expect { string_array.two_sum }.to raise_error('I only sum integer')
    end

    it 'returns pair indexes in ascending order' do
      expect([-1, 1].two_sum).to eq([[0, 1]])
    end

    it 'returns all index pairs in ascending order' do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end

    it 'does not pair index with itself' do
      expect([0, 0].two_sum).to_not include([0, 0], [1, 1])
    end

    it 'returns indexes not values' do
      expect([-1, 0, 2, -2, 1].two_sum).to_not eq([[-1, 1], [2, -2]])
    end

    it 'returns an empty array if no pairs found' do
      expect([1, 2, 3].two_sum).to be_empty
    end
  end
end
