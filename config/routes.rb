Rails.application.routes.draw do

  root to: 'musics#index'
  resources :musics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
mount Attachinary::Engine => "/attachinary"
end

