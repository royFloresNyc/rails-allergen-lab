class Ingredient < ApplicationRecord
  belongs_to :recipe
  has_many :allergies

  def number_of_allergic_users
    self.allergies.count
  end 
end
