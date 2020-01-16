class CreatePuts < ActiveRecord::Migration[5.2]
  def change
    create_table :puts do |t|

      t.timestamps
    end
  end
end
