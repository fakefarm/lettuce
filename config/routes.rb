Rails.application.routes.draw do
  mount Filer::Engine => "/"
  mount People::Engine => "/"
  mount Marketing::Engine => "/"
end
