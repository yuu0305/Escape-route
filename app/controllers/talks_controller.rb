class TalksController < ApplicationController
  before_action :authenticate_user!

  def index
    @talk = Talk.new
    # @messegas = Talk.all
    @right_talks = Talk.where(user_id: current_user.id).order("created_at ASC")
    @left_talks = Talk.where.not(user_id: current_user.id).order("created_at ASC")
    # binding.pry
    @time = Time.now
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