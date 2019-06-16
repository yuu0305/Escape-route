class TalksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_users_room

  def index
    # binding.pry
    @talk = Talk.new
    @talks = Talk.where(user_room_id: params[:users_room_id])
    @right_talks = Talk.where(user_id: current_user.id).order("created_at ASC")
    @left_talks = Talk.where.not(user_id: current_user.id).order("created_at ASC")
    # binding.pry
    @time = Time.now
    @room = UsersRoom.find(params[:users_room_id])
  end

  def create
    # @talk = @Users_room.messages.new(talk_params)
    # binding.pry
    @talk.save
    redirect_to "/talks/"
  end

  private
  def talk_params
    params.require(:talk).permit(:message).merge(user_id: current_user.id ,users_room_id: params[:users_room_id])
  end

  def set_users_room
    @room = UsersRoom.find(params[:users_room_id])
  end
end



# params.require(:talk).permit(:message).merge(user_id: params[:user_id])

# user_id: current_user.id