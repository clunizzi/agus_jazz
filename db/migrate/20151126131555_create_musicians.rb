class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :name
      t.text :bio

      t.timestamps null: false
    end
  end
end
