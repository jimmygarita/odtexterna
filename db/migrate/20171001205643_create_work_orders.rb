class CreateWorkOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :work_orders do |t|
      t.date :date_start
      t.date :date_end
      t.integer :status
      t.text :details

      t.timestamps
    end
  end
end
