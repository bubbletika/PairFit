class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end




  def edit_activities
    @user = User.find(params[:id])
  end

  def update_activities
    @user = User.find(params[:id])

      @user.user_activities.destroy_all

      params[:user][:activity_ids].each do |a|
        @user.user_activities.create(user_id: @user.id, activity_id: a)
      end

      flash[:success] = "Added activitiy"
      redirect_to @user

  end

  def buddies
    @buddies = current_user.partners.all
  end

  def buddy_page
    @buddy = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :location, :bio, :email, :password, :age, :weight, :height,
                                 :password_confirmation, :activity_ids => [] )
  end

  def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
end