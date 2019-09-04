class ChangeNumPiecesToInt < ActiveRecord::Migration[5.2]
  def change
    change_column :puzzles, :num_pieces, :integer
  end
end
