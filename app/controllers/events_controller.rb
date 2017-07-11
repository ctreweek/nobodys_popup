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
    attendees = []
    @event.attendees.each do |attendee|
    attendees << attendee.user_id
    end
   if attendees.include?(@user.id)
    # @event_ids = []

    # @user.attendees.each do |attendee|
    # @event_ids << attendee.event_id
    # end
    # if @event_ids.include?(@event.id)
      redirect_to event_path(@event)
    else
      Attendee.create(user_id: @user.id, event_id: @event.id)
      redirect_to event_path(@event)
    end
  end

  def attending?
    @event = Event.find(params[:event_id])
    @user = current_user
    @event_ids = []

    @user.attendees.each do |attendee|
    @event_ids << attendee.event_id
    end
    if @event_ids.include?(@event.id)
      return true
    end
  end

end
