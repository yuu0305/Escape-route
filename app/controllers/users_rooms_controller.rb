class UsersRoomsController < ApplicationController
# before_action :authenticate_user!

    def index
    end


    def create
      @room = UsersRoom.new(user_id: current_user.id)
      @room.save!
      binding.pry
      redirect_to "/users_rooms/#{@room.id}/talks"
    end

    # private
    # def users_room_params
    #   params.require(:usersroom).merge(user_id: current_user.id)
    # end
end