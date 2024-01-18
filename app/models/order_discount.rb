class OrderDiscount < ApplicationRecord
  belongs_to :order
  belongs_to :discount
  belongs_to :promotion
end
