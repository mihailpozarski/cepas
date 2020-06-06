Rails.application.routes.draw do
  resources :contracts
  resources :ratings
  resources :positions
  resources :magazines
  resources :enologists
  resources :strains
  resources :wines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'wines#index'
end
