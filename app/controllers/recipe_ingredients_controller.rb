class RecipeIngredientsController < ApplicationController
    
    def index
        @recipe_ingredients = RecipeIngredients.all
    end
    
    def show
        @recipe_ingredient = RecipeIngredient.find(params[:id])
    end
    
    def new 
    end
    
    def create
        @recipe = Recipe.find(params[:recipe_id])
        
        @recipe_ingredient = @recipe.recipe_ingredients.create(recipe_ingredient_params)
        
    
        redirect_to recipe_path(@recipe)
    end
    
    private
        def recipe_ingredient_params
            params.require(:recipe_ingredient).permit(:ingredient_id, :amount)
        end
    
end
