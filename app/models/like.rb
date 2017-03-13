class Like < ApplicationRecord
	belongs_to :article
  	belongs_to :user

    validates :user, presence: true
    validates :user_id, uniqueness: { scope: :article_id }
    validates :article, presence: true

end
