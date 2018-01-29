class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :schedule

  def schedule
    session[:schedule] ||= []
  end

  def hello
    if session[:name].nil?
      redirect_to "/login"
    end
  end
end
