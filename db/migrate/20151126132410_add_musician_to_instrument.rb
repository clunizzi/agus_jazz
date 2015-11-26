class AddMusicianToInstrument < ActiveRecord::Migration
  def change
  	add_column :instruments, :musician_id, :integer
  end
end
