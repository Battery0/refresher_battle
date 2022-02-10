require 'game'

describe Game do

  let(:game) { described_class.new(player_one_dbl, player_two_dbl) }
  let(:player_one_dbl) { double("player_one") }
  let(:player_two_dbl) { double("player_two") }

  describe '#player_1' do
    it 'returns player 1 object' do
      expect(game.player_1).to eq(player_one_dbl)
    end
  end

  describe '#player_2' do
    it 'returns player 2 object' do
      expect(game.player_2).to eq(player_two_dbl)
    end
  end

  describe '#attack' do
    it 'should reduce the hitpoints of another player by 10 HP' do
      allow(player_two_dbl).to receive(:damage).and_return(40)
      expect(game.attack(player_two_dbl)).to eq(40)
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq(player_one_dbl)
    end
  end

  describe 'switch_turns' do
    it 'changes the player turn' do
      game.switch_turns
      expect(game.current_turn).to eq (player_two_dbl)
    end
  end

end
