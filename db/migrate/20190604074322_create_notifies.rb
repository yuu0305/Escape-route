class CreateNotifies < ActiveRecord::Migration[5.2]
  def change
    create_table :notifies do |t|
      t.string :school ,null: false
      t.integer :grade ,null: false
      t.text :text ,null: false
      t.timestamps
    end
  end
end
