class CreateWorkDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :work_details do |t|
      t.string :media_name
      t.string :size
      t.integer :cost
      t.text :details

      t.timestamps
    end
  end
end
