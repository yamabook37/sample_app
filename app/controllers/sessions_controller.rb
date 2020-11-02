class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      log_in user
      redirect_to user
    else
      # エラーメッセージを作成する
      flash.now[:danger] = 'Invalid email/password combination'
      #flash.nowは次のリクエストが起きると消える
      render 'new'
    end
  end

  def destroy
    log_out
      #sessions_helperを呼んでいる
    redirect_to root_url
  end
end
