Rails.application.routes.draw do
  mount Filer::Engine => "/"
end
