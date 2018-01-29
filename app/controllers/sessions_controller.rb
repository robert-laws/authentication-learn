class SessionsController < ApplicationController
  def index
  end

  def show
    @user = session[:username] ||= "not logged in..."
  end

  def new
  end

  def create
    session[:username] = params[:username]
    redirect_to '/user'
  end

  def destroy
    session.delete :username
    redirect_to '/user'
  end
end
