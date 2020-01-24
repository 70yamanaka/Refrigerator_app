class CreatePuts < ActiveRecord::Migration[5.2]
  def change
    create_table :puts do |t|
      t.text :image, null: false
      t.text :bestby_date_y
      t.text :bestby_date_m
      t.text :bestby_date_d
      t.string :category, null: false, default: 0
      t.integer :count, null: false
      t.string :name, null: false
      t.string :memo
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
