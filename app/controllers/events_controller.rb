class EventsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def attend
    @event = Event.find(params[:event_id])
    @user = current_user
    Attendee.create(user_id: @user.id, event_id: @event.id)
    redirect_to event_path(@event)
  end

end
