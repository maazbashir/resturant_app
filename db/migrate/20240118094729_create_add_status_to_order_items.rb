class CreateAddStatusToOrderItems < ActiveRecord::Migration[7.1]
  def change
    create_table :add_status_to_order_items do |t|
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
