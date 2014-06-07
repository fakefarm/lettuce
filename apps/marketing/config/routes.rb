Marketing::Engine.routes.draw do
  # root to: 'pages#index'
  get 'welcome' => 'pages#index'
end
