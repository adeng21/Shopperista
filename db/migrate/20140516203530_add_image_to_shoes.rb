class AddImageToShoes < ActiveRecord::Migration
  def up
    add_column :shoes, :style, :string, null: false
    add_column :shoes, :image, :string, null: false

    remove_column :shoes, :name
  end

  def down
    remove_column :shoes, :style
    remove_column :shoes, :image

    add_column :shoes, :name, :string, null: false
  end
end
