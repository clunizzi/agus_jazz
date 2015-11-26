class AddRecordingToConcert < ActiveRecord::Migration
  def change
  	add_column :concerts, :recording, :string
  end
end
