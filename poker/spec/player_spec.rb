require 'rspec'
require 'player'

describe Player do
  subject(:julez) { Player.new('julez', ) }

  describe '#initialize' do
    it 'sets name to player_name' do
      expect(julez.name).to eq('julez')
    end
  end
end
