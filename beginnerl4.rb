class Player
  def initialize
    @health = 20
  end

  def play_turn(warrior)
    if warrior.feel.enemy?
      warrior.attack!
    elsif warrior.health < @health
      warrior.walk!
    elsif warrior.health < 14
      warrior.rest!
    else
      warrior.walk!
    end
    @health = warrior.health
  end
end
