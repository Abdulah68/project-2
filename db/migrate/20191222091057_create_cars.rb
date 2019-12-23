class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.references :user, null: false, foreign_key: true
      t.string :img
      t.string :name
      t.string :make
      t.integer :year
      t.integer :price

      t.timestamps
    end
  end
end
