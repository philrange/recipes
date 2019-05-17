class IngredientsController < ApplicationController
    
    def index
        @ingredients = Ingredient.all
    end
    
    def show
        @ingredient = Ingredient.find(params[:id])
    end
    
    def new 
    end
    
    def create
        @ingredient = Ingredient.new(article_params)
        
        @ingredient.save
        
        
        if @recipe
            redirect_to @recipe
        else 
            redirect_to @ingredient
        end
    end
    
    private
        def article_params
            params.require(:ingredient).permit(:name, :unit)
        end
    
end
