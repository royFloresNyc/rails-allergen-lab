class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def ingredients=(ingredients)
    ingredients[:names].each do |ingredient|
        if ingredient != ""
            new_ingredient = Ingredient.find_or_create_by(name: ingredient)
            self.ingredients << new_ingredient
        end 
    end
  end

end
