class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :pets do |t|
      t.integer :user_id
      t.integer :pet_id
    end
  end
end
