
Rails.application.routes.draw do
   # Set the root route if needed
   root 'user#index'
  # Devise routes for User model
  devise_for :users

  # Define nested resources for User and other models
  resources :users do
    # Nested resources for Profiles
    resources :profiles, only: [:new, :create, :show, :edit, :update, :destroy]

    # Nested resources for TraitScores
    resources :trait_scores

    # Nested resources for Responses
    resources :responses
  end

  resources :careers do
    # Nested resources for CareerTraits
    resources :career_traits
  end

  resources :personality_traits do
    # Nested resources for Questions
    resources :questions
  end

  # Other top-level resources routes can go here

 
end
