class AddPokemonIdToBerries < ActiveRecord::Migration[7.1]
  def change
    add_reference :berries, :pokemon, null: false, foreign_key: true
  end
end
