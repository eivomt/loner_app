class EventsController < ApplicationController
  before_action :find_event, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]


  def index
    @events = Event.geocoded #returns flats with coordinates

    @markers = @events.map do |event|
      if event.categories == "volunteering"
        {
          lat: event.latitude,
          lng: event.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { event: event }),
          image_url: helpers.asset_url('heart-15-map.svg'),
        }
      else
        {
          lat: event.latitude,
          lng: event.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { event: event }),
          image_url: helpers.asset_url('marker-stroked-15.svg')
        }
      end
    end

    @user_friends_id = []
    @array_of_events_instances = []
    @events_id = []
    @array_of_friends = []
    if user_signed_in?
      current_user.event_users.each do |event|
        event  = Event.find(event.event_id)
        if event.time < DateTime.now
          @events_id << event.id
          @events_id.each do |id|
            e = Event.find(id)
            @array_of_events_instances << e

            @array_of_events_instances.each do |event_instances|
              u = event_instances.user_ids
              u.each do |user_id|
                user = User.find(user_id)
                if current_user == user

                elsif @array_of_friends.include?(user)
                else
                  @array_of_friends << user
                end
              end
            end
          end
        end
      end
      @array_of_friends
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
    @event.creator = current_user
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
    @going_count = @event.people_going + @event.event_users.count
    @missing_count = @event.people_needed - @event.event_users.count
    @comments = Comment.where(event_id: [@event.id])
    @event_attendees = []
    @event.event_users.each do |event_user|
       id = event_user.user_id
       @event_attendees << id
    end
    @event_attendees
    @user = User.find(@event.creator_id)


      if @event.categories == "volunteering"
        @marker =
        [{
          lat: @event.latitude,
          lng: @event.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { event: @event }),
          image_url: helpers.asset_url('heart-15-map.svg'),
        }]
      else
        @marker =
        [{
          lat: @event.latitude,
          lng: @event.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { event: @event }),
          image_url: helpers.asset_url('marker-stroked-15.svg')
        }]
      end
      return @marker
  end


  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :address, :people_going, :people_needed, :age_range, :time, :photo)
  end
end
