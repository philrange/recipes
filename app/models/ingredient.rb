class Ingredient < ApplicationRecord
    
  has_many :recipe_ingredients 
    
  def label_for_select
    "#{name} (#{unit})"
  end
    
end
