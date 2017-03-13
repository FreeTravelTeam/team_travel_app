class Article < ApplicationRecord
	mount_uploader :image, ImageUploader

	belongs_to :user
	has_many :likes, dependent: :destroy

	validates :image, presence: { message: 'は、必須項目です。' }
	validates :title, presence: { message: 'は、必須項目です。' }
	validates :body, presence: { message: 'は、必須項目です。' }
	validates :country, presence: { message: 'は、必須項目です。' }
	validates :region, presence: { message: 'は、必須項目です。' }

  	def like_user?(user_id)
   		likes.where(user_id: user_id).present?
  	end
end
