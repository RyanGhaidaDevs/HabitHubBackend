class WorkoutsController < ApplicationController
  include CurrentUserConcern

  def create
    params = workout_params
    @workout = Workout.create(params)
    render json: {workout: @workout}
  end 

  private 
 
  def workout_params 
    params.require(:user).permit(:user_id, :reps)
  end 

end
