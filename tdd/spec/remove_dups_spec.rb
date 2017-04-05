require 'rspec'
require 'remove_dups'

describe '#remove_dups' do
  subject(:test_array) { [1, 2, 3] }
  let(:dummy) { [3, 3, 2, 1, 1] }

  it 'raises and error if not given an array' do
    expect { remove_dups('array') }.to raise_error('please pass an array')
  end

  it 'removes duplicates' do
    expect(remove_dups([1, 2, 1, 3, 3])).to eq([1, 2, 3])
  end

  it 'returns new array' do
    new_array = remove_dups(test_array)
    expect(new_array).to_not be(test_array)
  end

  it 'returns elements in order of appearance' do
    expect(remove_dups(dummy)).to eq([3, 2, 1])
  end

end
