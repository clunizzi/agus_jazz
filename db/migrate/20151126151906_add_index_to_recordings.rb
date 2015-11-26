class AddIndexToRecordings < ActiveRecord::Migration
  def change
  	add_index :recordings, [:musician_id, :concert_id], unique: true
  end
end
