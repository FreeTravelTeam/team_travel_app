class Article < ApplicationRecord
	mount_uploader :image, ImageUploader

	belongs_to :user
	has_many :likes, dependent: :destroy

  	def like_user?(user_id)
   		likes.where(user_id: user_id).present?
  	end
end
