class AddIndexToMusicians < ActiveRecord::Migration
  def change
  	  	add_index :musicians, :name
  end
end
