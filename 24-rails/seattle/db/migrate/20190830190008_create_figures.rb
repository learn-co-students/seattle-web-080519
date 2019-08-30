class CreateFigures < ActiveRecord::Migration[5.2]
  def change
    create_table :figures do |t|
      t.string :name
      t.string :landmarks
      t.string :titles

      t.timestamps
    end
  end
end
