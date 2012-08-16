class AddQuantityToLineItem < ActiveRecord::Migration
  def self.up
    add_colomn :line_items, :quantity, :integer, :default => 1
  end
  def self.down
    remove_colomn :line_items, :quantity
  end
  def change
    add_column :line_items, :quantity, :string
    add_column :line_items, :integer, :string
  end
end
