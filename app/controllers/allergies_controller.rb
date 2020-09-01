class AllergiesController < ApplicationController

    def new
        @allergy = Allergy.new
        @users = User.all
        @ingredients = Ingredient.all
    end 

    def create
        allergy = Allergy.create(params.require(:allergy).permit(:user_id, :ingredient_id))
        redirect_to user_path(allergy.user)
    end 
end
