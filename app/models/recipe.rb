class Recipe < ActiveRecord::Base
 belongs_to :user
 has_many :recipes
 has_many :yums
 has_many :photos
 has_many :comments

 has_many :recipe_tags
 has_many :tags, through: :recipe_tags
end
