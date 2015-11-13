class User < ActiveRecord::Base
  has_many :yums
  has_many :recipes
  has_many :photos
  has_many :comments
end
