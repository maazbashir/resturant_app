class CreateOrderDiscounts < ActiveRecord::Migration[7.1]
  def change
    create_table :order_discounts do |t|
      t.references :order, null: false, foreign_key: true
      t.references :discount, null: false, foreign_key: true
      t.references :promotion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
