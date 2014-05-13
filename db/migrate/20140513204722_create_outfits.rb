class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :name
      t.integer :pant_id
      t.integer :shoe_id
      t.integer :shirt_id
      t.timestamps
    end
  end
end
