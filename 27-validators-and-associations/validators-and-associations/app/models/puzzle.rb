class Puzzle < ApplicationRecord
  belongs_to :category

  validates :num_pieces, numericality: {minimum: 0}
  validate :greater_than_zero

  def greater_than_zero
    if self.num_pieces && self.num_pieces < 0
      self.errors.add(:num_pieces, "Pieces can't be less than zero.")
    end
  end
end
