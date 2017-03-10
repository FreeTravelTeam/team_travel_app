class AddLikeUserIdToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :like_user_id, :integer
  end
end
