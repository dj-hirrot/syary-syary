Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'

  namespace :api, { format: :json } do
    namespace :v1 do
      resources :users, only: [:new, :create]
    end
  end
end
