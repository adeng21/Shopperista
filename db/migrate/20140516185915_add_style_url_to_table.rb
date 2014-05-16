class AddStyleUrlToTable < ActiveRecord::Migration
  def up
    add_column :pants, :style, :string, null: false
    add_column :pants, :image, :string, null: false

    remove_column :pants, :name
  end

  def down
    remove_column :pants, :style
    remove_column :pants, :image

    add_column :pants, :name, :string, null: false
  end
end
