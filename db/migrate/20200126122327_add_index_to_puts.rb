class AddIndexToPuts < ActiveRecord::Migration[5.2]
  def change
    add_index :puts, :name, length: 32
  end
end
