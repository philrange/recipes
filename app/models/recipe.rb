class Recipe < ApplicationRecord
    enum meal: [:breakfast, :lunch, :dinner]
    
    has_many :meals
    has_many :recipe_ingredients
#    has_rich_text :method
    
end
