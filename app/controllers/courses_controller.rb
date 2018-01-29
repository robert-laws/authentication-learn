class CoursesController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:info]

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def add
    schedule << params[:course_name]
    redirect_to courses_path
  end

  def info

  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
