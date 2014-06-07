Filer::Engine.routes.draw do
  resources :comments

  resources :sources
  resources :months

  get 'dashboard' => 'months#index'
end
