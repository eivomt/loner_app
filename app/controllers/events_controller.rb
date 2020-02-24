class EventsController < ApplicationController

  def index
    @events = Event.all
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
