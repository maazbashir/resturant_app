class CreatePizzaIngrediants < ActiveRecord::Migration[7.1]
  def change
    create_table :pizza_ingrediants do |t|
      t.references :pizza, null: false, foreign_key: true
      t.references :ingrediant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
