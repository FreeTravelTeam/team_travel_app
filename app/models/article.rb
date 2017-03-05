class Article < ApplicationRecord
	mount_uploader :image, ImageUploader
	
	belogns_to :user
end
