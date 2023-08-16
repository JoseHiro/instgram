Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'home#Index'

  post 'toggle_like', to: 'likes#toggle_like', as: :toggle_like
end
