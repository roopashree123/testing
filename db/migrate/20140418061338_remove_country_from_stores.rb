class RemoveCountryFromStores < ActiveRecord::Migration
  def up
    remove_column :stores, :country
  end

  def down
    add_column :stores, :country, :string
  end
end
