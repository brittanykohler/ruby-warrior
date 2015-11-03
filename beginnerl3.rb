class Player
  def play_turn(warrior)
    if !warrior.feel.enemy? && warrior.health < 15
      warrior.rest!
    elsif warrior.feel.enemy?
      warrior.attack!
    else
     warrior.walk!
    end
  end
end
