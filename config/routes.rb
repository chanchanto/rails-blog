Rails.application.routes.draw do
  resources :posts do
    resources :comments
    resources :bookmarks
  end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root "posts#index"
end
