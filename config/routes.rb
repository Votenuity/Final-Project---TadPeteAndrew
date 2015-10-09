Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: {registrations: "registrations"}

  resources :races, only: [:show] do
    resources :forums, only: [:show] do
      resources :forum_topics, only: [:show, :create, :edit, :update]
    end
  end
  resources :bills, only: [:show, :index]
  resources :legislators, only: [:index, :show]
  resources :users, only: [:show, :update]
  resources :sign_up_steps
  resources :messages


  post 'races/follow' => 'races#follow', as: :follow_race
  post 'races/unfollow' => 'races#unfollow', as: :unfollow_race

  post 'users/follow' => 'users#follow', as: :follow
  post 'users/unfollow' => 'users#unfollow', as: :unfollow

  get 'bills/:session/:billName' => 'bills#show', as: :sessioned_bill

  get 'bills/sessions/:session' => 'bills#index', as: :bills_session

  root 'welcome#index'

end
