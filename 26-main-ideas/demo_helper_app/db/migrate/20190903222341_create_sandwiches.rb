class CreateSandwiches < ActiveRecord::Migration[5.2]
  def change
    create_table :sandwiches do |t|
      t.string :bread
      t.string :meat
      t.string :dressing

      t.timestamps
    end
  end
end
