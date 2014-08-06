class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :store_url
      t.string :area
      t.string :location
    

      t.timestamps
    end
  end
end
