class MeditationsController < ApplicationController
  include CurrentUserConcern

  def createBefore
    params = meditation_params
    @meditation = Meditation.create(params)
    render json: {meditation: @meditation}
  end 

  def updateAfter
    params = meditation_params
    # @meditation = Meditation.find(params)
    # @meditation = Meditation.update(params)
    render json: {meditation: @meditation}
  end 

  private 
 
  def meditation_params 
    params.require(:user).permit(:user_id, :before, :after, :time)
  end
end
