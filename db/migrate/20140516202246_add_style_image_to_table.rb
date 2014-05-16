class AddStyleImageToTable < ActiveRecord::Migration
  def up
    add_column :shirts, :style, :string, null: false
    add_column :shirts, :image, :string, null: false

    remove_column :shirts, :name
  end

  def down
    remove_column :shirts, :style
    remove_column :shirts, :image

    add_column :shirts, :name, :string, null: false
  end
end
