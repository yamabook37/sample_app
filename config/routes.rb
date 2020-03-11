Rails.application.routes.draw do
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'
  root 'static_pages#home'

  #get 'static_pages/home' # 3章で追加，getリクエストHTTP(HyperText Transfer Protocol)と関連づけ
  get  '/home',    to: 'static_pages#home' #5章で変更
  #get 'static_pages/help'
  get  '/help',    to: 'static_pages#help' #5章で変更
  #get  'static_pages/about' #3章で追加した
  get  '/about',    to: 'static_pages#about' #5章で変更
  #get  'static_pages/contact' #演習
  get  '/contact',    to: 'static_pages#contact' #5章で変更
  get  '/signup',  to: 'users#new'
end