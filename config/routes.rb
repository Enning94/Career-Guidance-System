Rails.application.routes.draw do
  resources :career_traits
  resources :user_careers
  resources :responses
  resources :questions
  resources :trait_weights
  resources :careers
  resources :trait_scores
  resources :personality_traits
  resources :profiles
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
