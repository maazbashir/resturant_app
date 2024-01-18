class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :status, default: 0
      t.float :price

      t.timestamps
    end
  end
end
