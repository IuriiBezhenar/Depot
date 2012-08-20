class AddQuantityToLineItem < ActiveRecord::Migration


  #def change
  #  change_table :line_items do |t|
  #  t.remove :quantity
  #  end
  #end
  
  def up
    #add_column
    change_table :line_items do |t|
    t.integer :quantity, :default => 1
    end
  end

  #def self.up
  #  add_column :line_items, :quantity, :integer, :default => 1
  #end
  def down
    remove_column :line_items, :quantity
  end
end
