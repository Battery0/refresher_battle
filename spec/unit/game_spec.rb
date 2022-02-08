require 'game'

describe Game do

  let(:game) { described_class.new }
  let(:player_one_dbl) { double("player_one") }
  let(:player_two_dbl) { double("player_two") }

  describe '#attack' do
    it 'should reduce the hitpoints of another player by 10 HP' do
      allow(player_two_dbl).to receive(:damage).and_return(40)
      expect(game.attack(player_two_dbl)).to eq(40)
    end
  end

end
