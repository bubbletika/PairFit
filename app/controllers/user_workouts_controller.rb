class UserWorkoutsController < ApplicationController
	def show
	end

	def new
		@user_workout = UserWorkout.new
	end

	def create
		@user_workout = UserWorkout.new(user_workout_params)
		if @user_workout.save
			redirect_to @user_workout
		else
			render 'new'
		end
	end

	def destroy
	end

	def edit
	end

	private

	def user_workout_params
		params.require(:user).permit(:date, :name, :length)
	end
end
 