class CreateBerries < ActiveRecord::Migration[7.1]
  def change
    create_table :berries do |t|
      t.string :name

      t.timestamps
    end
  end
end
