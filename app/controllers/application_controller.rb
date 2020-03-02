class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_filter :strip_www

  def strip_www
    if request.env["HTTP_HOST"] == "www.plus-u.best"
      redirect_to "http://plus-u.best/"
    end
  end
end
