class RoutesController < ApplicationController
  def top
  end

  def index
    if user_signed_in?
      @user = User.find(current_user.id)
    end
  end

end
