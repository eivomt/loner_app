class EventsController < ApplicationController

  def index
    @events = Event.geocoded #returns flats with coordinates

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event }),
        image_url: helpers.asset_url('plus.jpg')
      }
    end
  end

  def new

  end

  def create

  end

  def show
    @event = Event.find(params[:id])
    # @exists = EventUser.exists?(user_id: current_user.id, event_id: params[:id])
    @event_user = current_user.event_users.find_by(event: @event)
    @creator = User.find(@event.creator_id)
  end

  private

  def event_params
    params.require(:article).permit(:title, :body, :photo)
  end
end
