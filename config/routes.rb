Rails.application.routes.draw do
  resources :sessions
  resources :session_blocks
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
   devise_scope :user do 
    root to: 'static_pages#home'
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end
  
  resources :students
  get "admin", to: "admin#index", as: :admin 
  namespace :admin do
  	post "turn_professor", as: :turn_professor
  end	
end
