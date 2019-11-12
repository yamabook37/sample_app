Rails.application.routes.draw do
  # 3章で追加，getリクエストHTTP(HyperText Transfer Protocol)と関連づけ
  get 'static_pages/home'
  get 'static_pages/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
