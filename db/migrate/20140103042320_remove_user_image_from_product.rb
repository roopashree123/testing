class RemoveUserImageFromProduct < ActiveRecord::Migration
  def up
    remove_column :products, :user_image
  end

  def down
    add_column :products, :user_image, :string
  end
end
