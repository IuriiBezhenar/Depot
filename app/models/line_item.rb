class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product, :id, :product_id, :created_at, :updated_at, :quantity
  belongs_to :product
  belongs_to :cart
end
