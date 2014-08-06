class RemoveZipFromStores < ActiveRecord::Migration
  def up
    remove_column :stores, :zip
  end

  def down
    add_column :stores, :zip, :decimal
  end
end
