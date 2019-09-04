class PuzzleHasOneCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :puzzles, :category_id, :integer
  end
end
