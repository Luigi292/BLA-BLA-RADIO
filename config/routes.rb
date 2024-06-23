Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to: "pages#home"

  # Static pages
  get 'home', to: 'pages#home'

  # Dashboard route (updated to point to 'pages#dashboard')
  get 'dashboard', to: 'pages#dashboard', as: :dashboard

  # Jam sessions routes
  resources :jam_sessions, only: [:index, :show, :new, :create, :edit, :update, :destroy]



  # User-specific routes (optional)
  resources :users, only: [:show] do
    # Additional routes related to users can be added here (e.g., profile page)
  end

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check
end
