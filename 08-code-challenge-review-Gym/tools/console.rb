# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
soundarya = Lifter.new("Soundarya", 15)
jared = Lifter.new("Jared", 110)

laf = Gym.new("LaFitness")
m1 = Membership.new(2000, laf, soundarya)

Pry.start

puts "Gains!"
