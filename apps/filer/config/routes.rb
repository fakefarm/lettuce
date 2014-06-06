Filer::Engine.routes.draw do
  resources :comments

  resources :sources
  resources :months
  root to: 'months#index'
end
