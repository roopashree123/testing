class RemoveAddressFromStores < ActiveRecord::Migration
  def up
    remove_column :stores, :address
  end

  def down
    add_column :stores, :address, :string
  end
end
