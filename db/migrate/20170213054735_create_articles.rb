class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :image
      t.text :body
      t.integer :price
      t.string :from_date
      t.string :to_date
      t.string :country
      t.string :region
      t.string :safety_info
      t.string :travel_item
      t.integer :user_id

      t.timestamps
    end
  end
end
