class CreatePokemons < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :pokeId
      t.string :health
      t.integer :level
      t.float :experience

      t.timestamps
    end
  end
end
