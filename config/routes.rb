Rails.application.routes.draw do
  get 'pplacas/new'

  get 'bienvenido/index'
  resources :pplacas
  root 'bienvenido#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
