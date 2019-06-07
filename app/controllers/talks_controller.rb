class TalksController < ApplicationController
  before_action :authenticate_user!

  def index
    @talk = Talk.new
    # @right_talks = Talk.where(user_id: current_user.id)
    # binding.pry
    # @left_talks = 
    # binding.pry
  end

  def create
    @talk = Talk.new(talk_params)
    # binding.pry
    @talk.save
    redirect_to "/talks/"
  end

  private
  def talk_params
    params.require(:talk).permit(:message).merge(user_id: current_user.id)
  end
end



# params.require(:talk).permit(:message).merge(user_id: params[:user_id])

# user_id: current_user.id