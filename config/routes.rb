Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#new'

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection, as: :logout
  end

  resource :secret, only: [:show]
end
