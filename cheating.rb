class Die
  
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing 
    @number_showing
  end

  def cheating
    @number_showing = 6 
  end

end

die = Die.new 
die.roll
puts die.showing
die.cheating
puts die.showing