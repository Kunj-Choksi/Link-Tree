Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  patch "links/:id", to: "links#update", as: :links
  
  get "appearance", to: "dashboard#appearance"
  get "analytics", to: 'analytics#show'
  
  get ":id", to: "dashboard#show", as: :user

  root 'dashboard#index'
end
