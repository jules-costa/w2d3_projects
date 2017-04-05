require 'rspec'
require 'transpose'

describe Array do
  describe '#my_transpose' do
    it 'raises error if not given array of arrays' do
      expect { [[1, 2], 3, 'four'].my_transpose }.to raise_error('Gimme arrays!')
    end

    it 'raises error if not a square array' do
      expect { [[1, 2], [3]].my_transpose }.to raise_error('Not a square array')
    end

    it 'transposes rows to cols' do
      expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 1, 2], [3, 4, 5], [6, 7, 8]].transpose)
    end

  end
end
