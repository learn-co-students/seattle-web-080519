class AddTrainerIdToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :trainer_id, :integer, foreign_key: true
  end
end
