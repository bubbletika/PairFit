class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)



    if @user.save
      @user.activities.build(params[:activity_ids])
      log_in @user

      flash[:success] = "Welcome to PairFit!"
      redirect_to @user
    else
      render 'new'
    end
  end



  private

  def user_params
    params.require(:user).permit(:name, :location, :bio, :email, :password, :age, :weight, :height,
                                 :password_confirmation, :activity_ids => [] )
  end
end