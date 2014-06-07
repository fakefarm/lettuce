People::Engine.routes.draw do
  devise_for :users, class_name: "People::User", module: :devise
end
