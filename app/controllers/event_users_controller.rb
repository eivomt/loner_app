class EventUsersController < ApplicationController
  def create
    @event_user = EventUser.new()
    @event = Event.find(params[:event_id])
    @event_user.event = @event
    @event_user.user = current_user
    if @event_user.save
      redirect_to event_path(params[:event_id])
    else
      raise
    end
  end

  def destroy
    @event_user = EventUser.where(user_id: current_user.id, event_id: params[:id].to_i)
    e = @event_user[0]
    e.destroy
    redirect_to event_path(params[:id])
  end
end
