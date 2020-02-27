class EventsController < ApplicationController
    before_action :find_event, only: [:show, :edit, :update, :destroy]


  def index
    @events = Event.geocoded #returns flats with coordinates

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event }),
        image_url: helpers.asset_url('marker-stroked-15.svg')
      }
    end
  end

  def new
    @event = Event.new
  end

  def create
    @events = Event.geocoded
        @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event }),
        image_url: helpers.asset_url('marker-stroked-15.svg')
      }
    end
    @event = Event.new(event_params)
    @event.owner = current_user
    if @event.save
      redirect_to event_path(@event)
    else
      render :index
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      redirect_to edit_event_path
    end
  end

  def destroy
    @event.destroy
    redirect_to root_path
  end

  def show
    @event = Event.find(params[:id])
    # @exists = EventUser.exists?(user_id: current_user.id, event_id: params[:id])
    @event_user = current_user.event_users.find_by(event: @event)
    @creator = User.find(@event.creator_id)
  end

  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :address, :people_going, :people_needed, :age_range, :time, :photo)
  end
end
