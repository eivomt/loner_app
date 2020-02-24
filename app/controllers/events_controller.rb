class EventsController < ApplicationController

  def index
    puts "Hello +u loser"
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
