Rails.application.routes.draw do
  resources :attacks do
    member do
      scope module: :attacks do
        resource :rails_default, only: :show
        resource :host_constrained, only: :show
        resource :no_csp, only: :show, controller: :no_csp
        resource :strict_dynamic, only: :show, controller: :strict_dynamic
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "home#index"

  get "auth/:provider/callback", to: "sessions#create"
  post "/logout", to: "sessions#destroy"
end
