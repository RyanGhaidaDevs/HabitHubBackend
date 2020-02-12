class JournalsController < ApplicationController
  include CurrentUserConcern

  def create
    params = journal_params
    @journal = Journal.create(params)
    render json: {journal: @journal}
  end 

  private 
 
  def journal_params 
    params.require(:user).permit(:user_id, :journal)
  end
end
