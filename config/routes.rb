Rails.application.routes.draw do
  resources :cars
 
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

    root to: "pages#home"
    mount Attachinary::Engine => "/attachinary"
end