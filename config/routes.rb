Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :character_classes, only: [:index, :show]
  resources :races, only: [:index, :show]

  resources :characters do
    member do
      get :toggle_status
    end
  end
  
  get 'about', to: 'pages#about'
  get 'public-characters', to: 'pages#public_characters'
  get 'character/:id', to: 'characters#show', as: 'character_show'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
