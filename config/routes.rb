Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  resources :welcomes
  resources :bulletins do
    resources :comments, :only =>[:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
