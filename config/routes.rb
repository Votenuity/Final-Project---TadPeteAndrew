Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :races, only: [:show]
  resources :legislators
  devise_for :users, controllers: {registrations: "registrations"}
  resources :users, only: [:index, :show, :edit, :update]
  post 'users/follow' => 'users#follow', as: :follow
  post 'users/unfollow' => 'users#unfollow', as: :unfollow
  resources :sign_up_steps
  root 'welcome#index'

end
