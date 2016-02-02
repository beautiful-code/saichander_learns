class Player
  def name
    @a
  end

  def name=(value)
    @a = value
  end

  def self.team
    puts "Team India"
  end
end

one = Player.new
two = Player.new
three = Player.new
one.name = "sachin"
two.name = "kohli"
three.name = "Dhoni"
puts one.name
puts two.name
puts three.name
one.name = "raina"
puts one.name
Player.team
