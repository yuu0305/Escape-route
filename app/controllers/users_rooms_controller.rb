class UsersRoomsController < ApplicationController
# before_action :authenticate_user!

  def index
  end


  def create
    unless @user = User.find(current_user.id).users_room.present?
      @room = UsersRoom.new(user_id: current_user.id)
      @room.save!
      redirect_to "/users_rooms/#{@room.id}/talks"
    else
      @already = User.find(current_user.id)
      redirect_to "/users_rooms/#{@already.users_room.id}/talks"
    end
  end

  # private
  # def users_room_params
  #   params.require(:usersroom).merge(user_id: current_user.id)
  # end
end





# @room = UsersRoom.new(user_id: current_user.id)
# @room.save!
# redirect_to "/users_rooms/#{@room.id}/talks"