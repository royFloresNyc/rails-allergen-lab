class Ingredient < ApplicationRecord
  has_many :allergies
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  def number_of_allergic_users
    self.allergies.count
  end 

  def self.sort_by_allergic_users
    Ingredient.all.sort { |a,b| a.number_of_allergic_users <=> b.number_of_allergic_users }.reverse
  end 
end
