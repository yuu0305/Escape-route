class CreateUsersRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :users_rooms do |t|
      t.integer :user_id
      t.timestamps
    end
  end
end
