class CreatePuzzles < ActiveRecord::Migration[5.2]
  def change
    create_table :puzzles do |t|
      t.string :name
      t.string :num_pieces

      t.timestamps
    end
  end
end
