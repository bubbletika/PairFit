class UserMarksController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @user_mark = UserMark.new

    @activity = Activity.find(params[:activity])
    @mark = Mark.find(params[:mark])
  end


  def create
    @user = User.find(params[:user_mark][:user_id])
    @user_mark = @user.user_marks.build(user_mark_params)


    if @user_mark.save


      flash[:success] = "Added personal best"
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    @user_mark = current_user.user_marks.find(params[:id])
    @user_mark.destroy
    flash[:notice] = "Removed personal best"
    redirect_to current_user
  end

  private

  def user_mark_params
    params.require(:user_mark).permit( :amount, :user_id, :mark_id)
  end
end