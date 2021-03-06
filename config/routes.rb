Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: "users/registrations" }
  resources :posts, only:[:index, :new, :create]
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
