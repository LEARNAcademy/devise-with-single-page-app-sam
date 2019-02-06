Rails.application.routes.draw do
  resources :skates
  devise_for :users
  root to: 'skates#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
