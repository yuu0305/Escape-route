class TalksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_users_room
  before_action :check_user
  before_action :user_find

  def index
    @talk = Talk.new
    @talks = Talk.where(users_room_id: params[:users_room_id])
    if @talks.present?
      @time = @talks.first.created_at.in_time_zone('Tokyo').strftime('%Y年%m月%d日 %H:%M')
    end
    @user = User.find(current_user.id)

    respond_to do |format|
      format.html
      format.json{@new_talk = @talks.where('id > ?',params[:talk_id])}
    end
  end

  def create
    @talk =Talk.new(talk_params)
    @talk.save
    respond_to do |format|
      format.html { redirect_to "/users_rooms/#{@room.id}/talks" }
      format.json
    end
    # redirect_to "/users_rooms/#{@room.id}/talks"
  end


  private
  def talk_params
    params.require(:talk).permit(:message).merge(user_id: current_user.id ,users_room_id: params[:users_room_id])
  end

  def set_users_room
    @room = UsersRoom.find(params[:users_room_id])
  end

  def user_find
    @user = User.find(current_user.id)
  end

  def check_user
    if user_signed_in? && @user.allowed != true
      if current_user.id != @room.user_id
        redirect_to (root_path)
      end
    end
  end
end



# params.require(:talk).permit(:message).merge(user_id: params[:user_id])

# user_id: current_user.id