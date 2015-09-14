Rails.application.routes.draw do

  resources :bills, only: [:show]
  resources :cills
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :races, only: [:show]
  post 'races/follow' => 'races#follow', as: :follow_race
  post 'races/unfollow' => 'races#unfollow', as: :unfollow_race
  resources :legislators
  devise_for :users, controllers: {registrations: "registrations"}
  resources :users, only: [:show, :update]
  post 'users/follow' => 'users#follow', as: :follow
  post 'users/unfollow' => 'users#unfollow', as: :unfollow
  resources :sign_up_steps
  root 'welcome#index'

end
