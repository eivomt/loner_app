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

  private

  def article_params
    params.require(:article).permit(:title, :body, :photo)
  end
end
