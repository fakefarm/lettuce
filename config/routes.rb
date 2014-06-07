Rails.application.routes.draw do
  mount Filer::Engine => "/"
  mount People::Engine => "/"
end
