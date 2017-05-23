class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :color
      t.boolean :chip
      t.date :found
      t.string :location

      t.timestamps
    end
  end
end
