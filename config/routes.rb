Rails.application.routes.draw do
  mount Filer::Engine => "/"
  mount Marketing::Engine => "/"
  mount People::Engine => "/"
end
