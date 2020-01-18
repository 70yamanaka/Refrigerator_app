class CreatePuts < ActiveRecord::Migration[5.2]
  def change
    create_table :puts do |t|
      t.text :image, null: false
      t.string :name, null: false
      t.integer :bestby_date_y
      t.integer :bestby_date_m
      t.integer :bestby_date_d
      t.integer :expiration_date_y, null: false
      t.integer :expiration_date_m, null: false
      t.integer :expiration_date_d, null: false
      t.integer :category, null: false, default: 0
      t.integer :type, null: false
      t.string :memo
      t.timestamps
    end
  end
end
