require 'faker'

User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Allergy.destroy_all
RecipeIngredient.destroy_all

10.times do 
    User.create(name: Faker::Name.unique.name, age: rand(6..65))
end 

5.times do 
    Recipe.create(user: User.all.sample, title: Faker::Food.unique.dish)
end 

10.times do 
    Ingredient.create(name: Faker::Food.unique.ingredient)
end 

10.times do 
    Allergy.find_or_create_by(user: User.all.sample, ingredient: Ingredient.all.sample)
end 

30.times do 
    RecipeIngredient.find_or_create_by(recipe: Recipe.all.sample, ingredient: Ingredient.all.sample)
end 