Rails.application.routes.draw do
  root 'userregs#index'
  resources :userregs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
