require 'rspec'
require 'stock_picker'

describe '#stock_picker' do
#   it 'raises an error if input is not array' do
#     expect { stock_picker('poop') }.to raise_error("I only take arrays!")
#   end
#
#   it 'raises an error if array is less than 2' do
#     expect { stock_picker([]) }.to raise_error("I need more prices!")
#   end
#
#   it 'raises an error if any element is not an integer' do
#     expect { stock_picker([2, 'three']) }.to raise_error("I only take integers")
#   end

  it 'returns indexes, not prices' do
    expect(stock_picker([5, 10])).to eq([0, 1])
  end

  it 'returns nil if no profitable options exist' do
    expect(stock_picker([10, 5])).to eq(nil)
  end

  it 'returns an array of length 2' do
    expect(stock_picker([5, 10, 3, 12]).count).to eq(2)
  end

  it 'returns indexes in ascending order' do
    expect(stock_picker([5, 10, 3, 12])).to eq([2, 3])
  end
end
