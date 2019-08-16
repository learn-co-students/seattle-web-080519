class ChangingColumNameInPokemons < ActiveRecord::Migration[5.2]
  def change
    rename_column :pokemons, :type, :pokemon_type
  end
end
