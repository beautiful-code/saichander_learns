class Player
  def name(a)
    @a=a
  end
  def name=(value)
    @a=value
  end
  def self.team
    puts "Team India"
  end
end

one=Player.new
two=Player.new
three=Player.new
one.name("sachin")
two.name("kohli")
puts three.name("Dhoni")
puts one.name=("raina")
Player.team


