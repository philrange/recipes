Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    
    get 'welcome/index'
    
    resources :recipes do
        resources :recipe_ingredients
    end
    
    resources :ingredients
    
    get '/recipes/meal/:meal', to: 'recipes#findByMeal', as: 'meal'
    
    root 'welcome#index'
end
