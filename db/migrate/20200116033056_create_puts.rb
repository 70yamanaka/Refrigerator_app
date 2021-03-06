class CreatePuts < ActiveRecord::Migration[5.2]
  def change
    create_table :puts do |t|
      t.text :image, null: false
      t.string :name, null: false
      t.integer :category, null: false, default: 0
      t.string :bestby_date_y, null: false
      t.string :bestby_date_m, null: false
      t.string :bestby_date_d, null: false
      t.integer :count
      t.string :memo
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
