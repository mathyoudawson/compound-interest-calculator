Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'compound_interest_calculations#new'

  resources :compound_interest_calculations
end
