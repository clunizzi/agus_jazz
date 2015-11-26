class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :place
      t.datetime :data

      t.timestamps null: false
    end
  end
end
