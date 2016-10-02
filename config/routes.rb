Rails.application.routes.draw do
  resources :session_blocks
  resources :students
  
  devise_for :users

  root to: "public#index"
  
  get "admin", to: "admin#index", as: :admin 
  namespace :admin do
  	post "turn_professor", as: :turn_professor
    resources :session_blocks, controller: :session_blocks
  end
	
end
