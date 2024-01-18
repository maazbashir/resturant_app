class AddSizeToPizza < ActiveRecord::Migration[7.1]
  def change
    add_column :pizzas, :size, :string
  end
end
