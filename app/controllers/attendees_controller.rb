class AttendeesController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @attendee = Attendee.new
    @event = Event.find(params[:event_id])
  end

  def create
    @attendee = Attendee.new
    @attendee.user = current_user
    @event = Event.find(params[:event_id])
    @user = User.find(params[:user_id])
    @attendee.save
  end
end
