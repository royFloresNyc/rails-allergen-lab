class User < ApplicationRecord
    has_many :recipes
    has_many :allergies

    def allergic_to
        self.allergies.map { |allergy| allergy.ingredient.name }
    end 
end
