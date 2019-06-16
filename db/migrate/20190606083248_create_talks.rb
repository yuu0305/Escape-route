class CreateTalks < ActiveRecord::Migration[5.2]
  def change
    create_table :talks do |t|
      t.string :message, null: false
      t.integer :user_id
      t.integer :users_room_id
      t.timestamps
    end
  end
end
