class CreatePromotions < ActiveRecord::Migration[7.1]
  def change
    create_table :promotions do |t|
      t.string :code
      t.float :discount_per

      t.timestamps
    end
  end
end
