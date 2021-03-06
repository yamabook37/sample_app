class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    #debugger

  end

  def new
    @user = User.new
  end

  def create
    #@user = User.new(params[:user])    # 実装は終わっていないことに注意!
    @user = User.new(user_params)
    if @user.save
      # 保存の成功をここで扱う。
      log_in @user
        #ユーザがログイン中かを確認する
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private
    # private内は一つ深くする
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                  :password_confirmation)
    end

end
