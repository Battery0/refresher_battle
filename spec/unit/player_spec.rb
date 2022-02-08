require 'player'

describe Player do

  player_one = described_class.new("Dave")
  player_two = described_class.new("Jess")
  hitpoints_after_attack = 40

  describe '#name' do
    it 'returns the players name' do
      expect(player_one.name).to eq("Dave")
    end
  end

  describe '#hitpoints' do
    it 'returns 50 HP (full health) at game start' do
      expect(player_one.health).to eq(described_class::DEFAULT_HITPOINTS)
    end
  end

  describe '#damage' do
    it 'reduces HP of the other player by 10' do
      expect(player_one.damage).to eq(hitpoints_after_attack)
    end
  end

  describe '#attack' do
    it 'should reduce the hitpoints of another player by 10 HP' do
      player_one.attack(player_two)
      expect(player_two.health).to eq(hitpoints_after_attack)
    end
  end

end
