class CreateRtos < ActiveRecord::Migration
  def change
    create_table :rtos do |t|
      t.integer :state_id
      t.string :code
      t.string :vehicle_number
      t.text :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
