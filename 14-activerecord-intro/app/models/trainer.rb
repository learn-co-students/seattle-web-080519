class Trainer < ActiveRecord::Base
  has_many :pokemons
  validates :name, presence: true
end
