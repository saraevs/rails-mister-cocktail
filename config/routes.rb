Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/cocktails', to: 'cocktails#index'
  get '/cocktails/new', to: 'cocktails#new', as: 'cocktail_new'
  get '/cocktails/:id', to: 'cocktails#show', as: 'cocktail'
  post '/cocktails', to: 'cocktails#create'

  # a user can add a new dose
  get 'cocktails/:cocktail_id/doses/new', to: 'doses#new', as: 'cocktail_dose_new'
  post 'cocktails/:cocktail_id/doses', to: 'doses#create', as: 'cocktail_doses'
end
