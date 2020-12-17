Rails.application.routes.draw do
  root to: 'pages#home'

  get 'entrega', to: 'pages#delivery'
  get 'sobre-nos', to: 'pages#about'
  get '/', to: 'pages#home'

  get 'products/filter/:tag', to: 'products#index', as: :tag

  resources :contents
  resources :line_items
  resources :carts
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
