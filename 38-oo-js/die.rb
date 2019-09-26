class Die
  attr_accessor :faces

  def initialize
    @faces = 6
  end

  def roll
    result = (rand * @faces).floor + 1
    result
  end
end

class D20 < Die
end

d6 = Die.new
puts d6.roll
puts d6.roll
puts d6.roll
puts d6.roll
puts d6.roll