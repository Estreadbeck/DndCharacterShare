Rails.application.routes.draw do

  resources :characters
  get 'about', to: 'pages#about'
  get 'character/:id', to: 'characters#show', as: 'character_show'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end