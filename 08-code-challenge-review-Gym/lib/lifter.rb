class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    #cost, Lifter, Gym
    # select is going to be good to use.
    # binding.pry
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    # binding.pry
    self.memberships.map{|membership| membership.gym }
  end

  def self.average_lift
    # binding.pry
    sum = @@all.map {|lifter| lifter.lift_total }.sum
    total = @@all.count
    sum/total.to_f
  end

  # instance method
  # Memberships -> helper method already here
  # Use gym method to calculate the total_cost
  # copied gyms over and grabbed different data
  def total_cost
    # binding.pry
    self.memberships.map{|membership| membership.cost }.sum
  end

  def sign_up(gym, cost)
    Membership.new(cost, gym, self)
  end

end
