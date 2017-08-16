class Category < ActiveRecord::base

    has_many :categories_posts
    has_many :posts, through: :categories_posts

    validates :name, presence: true
end