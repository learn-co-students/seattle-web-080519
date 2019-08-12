class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    #cost, Lifter, Gym
    # select is going to be good to use.
    # binding.pry
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    # binding.pry
    self.memberships.map{|membership| membership.lifter }
  end

  def lifter_names
    self.lifters.map{|lifter| lifter.name}
  end

  def total_lift
    # binding.pry
    self.lifters.map{|lifter| lifter.lift_total}.sum
  end

end
