class User < ApplicationRecord
    has_many :recipes, foreign_key: :user_id, dependent: :destroy
    has_many :allergies, foreign_key: :user_id, dependent: :destroy

    def allergic_to
        self.allergies.map { |allergy| allergy.ingredient }
    end 
end
