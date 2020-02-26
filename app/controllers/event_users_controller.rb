class EventUsersController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @event_user = EventUser.new(event: @event, user: current_user)

    @event_user.save
    redirect_to event_path(@event)
  end

  def destroy
    @event_user = EventUser.find(params[:id])
    @event_user.destroy

    redirect_to event_path(@event_user.event)
  end
end
