Rails.application.routes.draw do
  resources :races
  resources :legislators
  devise_for :users, controllers: {registrations: "registrations"}
  resources :sign_up_steps
  root 'welcome#index'

end
