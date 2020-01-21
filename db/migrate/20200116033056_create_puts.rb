class CreatePuts < ActiveRecord::Migration[5.2]
  def change
    create_table :puts do |t|
      t.text :image
      t.integer :bestby_date_y
      t.integer :bestby_date_m
      t.integer :bestby_date_d
      t.integer :category, null: false, default: 0
      t.integer :count, null: false
      t.string :memo
      t.timestamps
    end
  end
end
