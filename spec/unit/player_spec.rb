require 'player'

describe Player do

  player = described_class.new("Dave")

  it 'returns a name' do
    expect(player.name).to eq("Dave")
  end

end