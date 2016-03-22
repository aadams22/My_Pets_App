class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string  :pet_name
      t.string :type
      t.string :color
      t.integer :hunger_level
      t.integer :loved_level

      t.timestamps null: false
    end
  end
end
