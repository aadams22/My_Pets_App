class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.belongs_to :user, index: true
      t.string :pet_name
      t.string :kind
      t.string :color
      t.string :img_url
      t.integer :hunger_level
      t.integer :loved_level


      t.timestamps null: false
    end
  end
end
