Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'
  root 'static_pages#home'

  # 3章で追加，getリクエストHTTP(HyperText Transfer Protocol)と関連づけ
  get 'static_pages/home'
  get 'static_pages/help'
  #追加した
  get  'static_pages/about'
  #演習
  get  'static_pages/contact'
end
