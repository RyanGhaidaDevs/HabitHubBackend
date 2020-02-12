class ShowersController < ApplicationController
  include CurrentUserConcern

  def create
    params = shower_params
    @coldShower = Shower.create(params)
    render json: {coldShower: @coldShower}
  end 
  
  private 
 
  def shower_params 
    params.require(:user).permit(:user_id, :minutes)
  end
end
