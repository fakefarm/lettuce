Rails.application.routes.draw do

  mount Filer::Engine => "/filer"
end
