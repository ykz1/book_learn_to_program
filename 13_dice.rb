class Die
  def initialize
    roll
  end

  def roll
    @showing = 1 + rand(6)
  end

  def showing
    @showing
  end

  def cheat(n)
    n = n.to_i
    if 1 <= n && n <= 6
      @showing = n
    else
      puts "Must be between 1 to 6"
    end
  end
end

die = Die.new
puts die.showing
die.cheat(4)
puts die.showing
die.cheat(7)
puts die.showing
