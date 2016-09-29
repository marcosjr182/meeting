Rails.application.routes.draw do
  resources :sessions
  resources :session_blocks
  resources :students
  
  devise_for :users
  
  get "admin", to: "admin#index", as: :admin 
  namespace :admin do
  	post "turn_professor", as: :turn_professor
  end
	
end
