class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :name, null: false
      t.string :brand, null: false
      t.string :url, null: false
      t.timestamps
    end
  end
end
