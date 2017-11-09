class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  # validates_uniqueness_of :dose_id, :scopes => [:cocktail_id, :ingredient_id]
  validates :cocktail, uniqueness: { scope: :ingredient }
end
