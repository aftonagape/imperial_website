Rails.application.routes.draw do

  get 'detachments/index'

  get 'detachments/show'

  root 'home#index'

  resources :members
  resources :events
  resources :costumes

end

