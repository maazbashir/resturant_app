class CreateDiscounts < ActiveRecord::Migration[7.1]
  def change
    create_table :discounts do |t|
      t.string :code
      t.float :discount_per

      t.timestamps
    end
  end
end
