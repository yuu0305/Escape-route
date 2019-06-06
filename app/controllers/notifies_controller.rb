class NotifiesController < ApplicationController
  def new
    @notify = Notify.new
  end

  def create
    @notify = Notify.new(tweet_params)
    @notify.save
  end
end


private
  def tweet_params
    params.require(:notify).permit( :school,:grade , :text)
  end