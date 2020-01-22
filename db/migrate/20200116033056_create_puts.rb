class CreatePuts < ActiveRecord::Migration[5.2]
  def change
    create_table :puts do |t|
      t.text :image, null: false
      t.integer :bestby_date_y
      t.integer :bestby_date_m
      t.integer :bestby_date_d
      t.integer :category, null: false, default: 0
      t.integer :count, null: false
      t.string :name, null: false
      t.string :memo
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
