class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :schedule

  def schedule
    session[:schedule] ||= []
  end
end
