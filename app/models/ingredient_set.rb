class IngredientSet < ActiveRecord::Base
  belongs_to :recipe
  has_many :ingredients
end
