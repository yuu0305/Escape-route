class TalksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_users_room

  def index
    @talk = Talk.new
    @talks = Talk.where(users_room_id: params[:users_room_id])
    if @talks.present?
      @time = @talks.first.created_at.time
    end
    @user = User.find(current_user.id)
  end

  def create
    @talk =Talk.new(talk_params)
    @talk.save
    redirect_to "/users_rooms/#{@room.id}/talks"
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