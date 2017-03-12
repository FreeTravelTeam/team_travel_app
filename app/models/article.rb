class Article < ApplicationRecord
	mount_uploader :image, ImageUploader

	belongs_to :user
	has_many :likes, dependent: :destroy

	validates :image, presence: true
	validates :title, presence: true
	validates :body, presence: true
	validates :country, presence: true
	validates :region, presence: true

  	def like_user?(user_id)
   		likes.where(user_id: user_id).present?
  	end
end
