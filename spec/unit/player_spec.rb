require 'player'

describe Player do

  player = described_class.new("Dave")

  describe '#name' do
    it 'returns the players name' do
      expect(player.name).to eq("Dave")
    end
  end

  describe '#hitpoints' do
    it 'returns 50 HP at the start (full health)' do
      expect(player.hitpoints).to eq(50)
    end
  end

end
