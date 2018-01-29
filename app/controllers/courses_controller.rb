class CoursesController < ApplicationController
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
end
