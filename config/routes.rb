Rails.application.routes.draw do
  resources :sessions
  resources :session_blocks
  devise_for :users
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
