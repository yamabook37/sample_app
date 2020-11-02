Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  #get  '/home',    to: 'static_pages#home' #5章で変更
  get  '/help',    to: 'static_pages#help' #5章で変更
  get  '/about',    to: 'static_pages#about' #5章で変更
  #get  'static_pages/contact' #演習
  get  '/contact',    to: 'static_pages#contact' #5章で変更
  get  '/signup',  to: 'users#new'
  #post '/signup',  to: 'users#create' #7章.26
  get    '/login',   to: 'sessions#new' #8章で追加
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end