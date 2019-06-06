class CreateTalks < ActiveRecord::Migration[5.2]
  def change
    create_table :talks do |t|
      t.string :message, null: false
      t.timestamps
    end
  end
end
