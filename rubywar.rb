class Player

  def play_turn(warrior)
    @health ||=0
    @turn ||=0
    # cool code goes here




  if warrior.feel.wall?
    warrior.pivot!
  end

    if warrior.feel.captive?
      warrior.rescue!
    elsif warrior.feel(:backward).captive?
    warrior.rescue!(:backward)
    end

   if warrior.feel.enemy?

    warrior.attack!

     elsif warrior.look[2].enemy? || (@turn!=0 and warrior.look[1].enemy?)
     warrior.shoot!

     elsif warrior.look[2].enemy?!=true and @health >  warrior.health and warrior.look[1].enemy?!=true
     warrior.pivot!
     @turn=1


  elsif warrior.feel(:backward).empty? and warrior.health < 7 and warrior.feel.enemy?!=true
      warrior.walk!(:backward)
    elsif warrior.feel(:backward).wall? and warrior.health <20
      warrior.rest!
    elsif warrior.feel.empty? and warrior.health > 7
      warrior.walk!
    elsif @health-warrior.health==11
    warrior.shoot!
    end


# if warrior.feel.empty? and @health >  warrior.health and warrior.health > 12
#       warrior.walk!


#     # elsif warrior.health < 20
#     #   warrior.rest!

#       elsif warrior.health < 12 and  warrior.feel(:backward).empty?
#     warrior.walk!(:backward)
#     elsif warrior.feel(:backward).wall? and warrior.health < 20
#         warrior.rest!
#   else
#     warrior.walk!
#   end

  @health= warrior.health

end
end