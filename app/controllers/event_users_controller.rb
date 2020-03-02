class EventUsersController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @event_user = EventUser.new(event: @event, user: current_user)
    @event_user.save

    render json: event_user_path(@event_user)
  end

  def destroy
    @event_user = EventUser.find(params[:id])
    @event_user.destroy

    head :ok
  end
end
