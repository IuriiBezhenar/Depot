class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :line_items, :dependent => :destroy
  #has_many :quantity
  def add_product(product_id)
    current_item = line_items.where(:product_id => product_id).first
    if current_item
      current_item.quantity = current_item.quantity.to_i+1
    else
      current_item = line_items.build(:product_id => product_id)
    end
    current_item
  end
end
