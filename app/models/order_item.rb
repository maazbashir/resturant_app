class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :pizza_ingrediant
end