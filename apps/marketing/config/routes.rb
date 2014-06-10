Marketing::Engine.routes.draw do
  root to: 'pages#index'
  devise_for :users, class_name: "People::User", module: :devise
end
