class CreateRecordings < ActiveRecord::Migration
  def change
    create_table :recordings do |t|
      t.references :musician, index: true, foreign_key: true
      t.references :concert, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
