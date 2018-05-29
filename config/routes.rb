Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :character_classes, only: [:index, :show, :destroy, :new, :create, :update, :edit, :sort]
  resources :races, only: [:index, :show, :destroy, :new, :create, :update, :edit, :sort]
  resources :archetypes, only: [:index, :show, :destroy, :new, :create, :update, :edit, :sort]

  resources :characters do
    member do
      get :toggle_status
    end
  end
  
  get 'about', to: 'pages#about'
  get 'public-characters', to: 'pages#public_characters'
  get 'character/:id', to: 'characters#show', as: 'character_show'
  get 'admin-dashboard', to: 'pages#admin_dashboard'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
