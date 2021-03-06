class RecipesController < ApplicationController
    
    def index
        @recipes = Recipe.all
    end
    
    def show
        @recipe = Recipe.find(params[:id])
    end
    
    def new 
    end
    
    def create
        @recipe = Recipe.new(recipe_params)
        
        @recipe.save
        
        redirect_to @recipe
    end
    
    def findByMeal
        @recipes = Recipe.where(meal: params[:meal])
    end
    
    private
        def recipe_params
            params.require(:recipe).permit(:name, :method, :meal)
        end
end
