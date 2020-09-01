require 'faker'

User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Allery.destroy_all

10.times do 
    User.create(name: Faker::Name.unique.name, age: rand(6..65))
end 

5.times do 
    Recipe.create(user_id: User.all.sample, title: Faker::Food.unique.dish)
end 

10.times do 
    Ingredient.create(name: Faker::Food.unique.ingredient, recipe: Recipe.all.sample)
end 

10.times do 
    Allergy.create(user: User.all.sample, ingredient: Ingredient.all.sample)
end 