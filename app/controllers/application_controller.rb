class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #hello アクションは消去した3.4.4
  #作りたくなったら3.1まで
end
