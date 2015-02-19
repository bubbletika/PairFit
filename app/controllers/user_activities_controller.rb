class UserActivitiesController < ApplicationController

  def new
    @user_activity = current_user.activities.build
  end


  def create

    @user_activity = current_user.activities.build(params[:activity_ids])
    if @user_activity.save
      flash[:notice] = "Added activity."
      redirect_to current_user
    else
      flash[:error] = "Unable to add activity"
      redirect_to current_user
    end
  end

  def destroy
    @user_activity = current_user.activities.find(params[:id])
    @user_activity.destroy
    flash[:notice] = "Removed activity"
    redirect_to current_user
  end

  private

  def user_activities_params
    params.require(:user).permit(:activity_ids => [])
  end
end