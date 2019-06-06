class NotifiesController < ApplicationController
  def new
    @notify = Notify.new
  end

  def create
    @notify = Notify.new(notify_params)
    @notify.save
  end
end


private
  def notify_params
    params.require(:notify).permit( :school,:grade , :text)
  end