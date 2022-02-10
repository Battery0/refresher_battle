class Game

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def player_1
    @player_one
  end

  def player_2
    @player_two
  end

  def attack(player)
    player.damage
  end

end
