class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :name, null: false
      t.string :brand, null: false
      t.string :url, null: false
      t.timestamps
    end
  end
end
