class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    @rooms = @user.rooms.order("created_at DESC").page(params[:page]).per(12)
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: "会員登録が完了しました"
    else
      render 'new'
    end
  end
  


  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
