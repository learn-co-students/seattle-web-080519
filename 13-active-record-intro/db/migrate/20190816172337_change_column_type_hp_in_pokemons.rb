class ChangeColumnTypeHpInPokemons < ActiveRecord::Migration[5.2]
  def change
    change_column :pokemons, :hp, :integer
  end
end
