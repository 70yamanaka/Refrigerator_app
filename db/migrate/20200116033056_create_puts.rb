class CreatePuts < ActiveRecord::Migration[5.2]
  def change
    create_table :puts do |t|
      t.text :image, null: false
      t.string :name, null: false
      t.integer :bestby_date
      t.integer :expiration_date, null: false
      t.integer :category, null: false, default: 0
      t.string :memo
      t.timestamps
    end
  end
end
