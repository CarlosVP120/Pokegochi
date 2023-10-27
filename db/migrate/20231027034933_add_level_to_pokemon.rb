class AddLevelToPokemon < ActiveRecord::Migration[7.1]
  def change
    add_column :pokemons, :level, :integer
  end
end
