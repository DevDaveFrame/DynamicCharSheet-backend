Rails.application.routes.draw do
  resources :character_descriptions
  resources :descriptions
  resources :character_stats
  resources :stats
  resources :character_languages
  resources :languages
  resources :characters
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
