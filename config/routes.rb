Rails.application.routes.draw do

  resources :bills, only: [:show, :index]
  get 'bills/sessions/:session' => 'bills#index', as: 'bills_session'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: {registrations: "registrations"}

  resources :races, only: [:show]
  resources :bills, only: [:show]
  resources :legislators, only: [:index, :show]
  resources :users, only: [:show, :update]
  resources :sign_up_steps

  post 'races/follow' => 'races#follow', as: :follow_race
  post 'races/unfollow' => 'races#unfollow', as: :unfollow_race

  post 'users/follow' => 'users#follow', as: :follow
  post 'users/unfollow' => 'users#unfollow', as: :unfollow

  get 'bills/:session/:billName' => 'bills#show', as: :sessioned_bill

  root 'welcome#index'

end
