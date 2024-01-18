class PizzaIngrediant < ApplicationRecord
  belongs_to :pizza
  belongs_to :ingrediant
end
