class TalksController < ApplicationController
  before_action :authenticate_user!

  def index
    @talk = Talk.new
  end

  def new
    @talk = Talk.new(talk.params)
    @talk.save
  end

  def create
    @talk = Talk.new(talk_params)
    # binding.pry
    @talk.save
  end

  private
  def talk_params
    params.require(:talk).permit(:message)
  end
end
