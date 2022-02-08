class Player

  DEFAULT_HITPOINTS = 50
  DEFAULT_DAMAGE = 10

  def initialize(player_name)
    @player_name = player_name
    @hitpoints = DEFAULT_HITPOINTS 
  end

  def name
    @player_name
  end

  def health
    @hitpoints
  end

  def damage
    @hitpoints -= DEFAULT_DAMAGE
  end

end
