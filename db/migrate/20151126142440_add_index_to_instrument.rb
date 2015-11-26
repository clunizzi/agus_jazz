class AddIndexToInstrument < ActiveRecord::Migration
  def change
  	add_index :instruments, :name, unique: true
  end
end
