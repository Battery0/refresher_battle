class Game

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @current_turn = player_one
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

  def current_turn
    @current_turn
  end

  def switch_turns
    turn_count = 1
    turn_count.even? ? @current_turn = @player_one : @current_turn = @player_two
    turn_count += 1
  end

end

