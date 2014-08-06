class Product < ActiveRecord::Base
  attr_accessible :brief_description, 
				  :category_name, 
				  :description, 
				  :discounts, 
				  :list_price, 
				  :offer_date,
				  :product_name, 
				  :product_price,
				  :quantity, 
				  :image,
				  :barcode
				  


validates :category_name,  presence: true
validates :description,  presence: true
validates :discounts,  presence: true
validates :list_price,  presence: true
validates :offer_date,  presence: true
validates :product_name,  presence: true
validates :product_price,  presence: true
validates :quantity,  presence: true
  


mount_uploader :image, ImageUploader


def self.search(search)
  if search
    find(:all, :conditions => ['barcode LIKE  ?', "%#{search}%"]) +
	find(:all, :conditions => ['product_name LIKE  ?', "%#{search}%"]) +
	find(:all, :conditions => ['category_name LIKE  ?', "%#{search}%"]) +
	find(:all, :conditions => ['image LIKE  ?', "%#{search}%"])


	
	
	 
  else
    find(:all)
  end
end





end
