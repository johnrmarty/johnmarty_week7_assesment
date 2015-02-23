class CoursesController < ApplicationController
  
	  before_action :user_logged_in!


	  def index
	  	@courses = Course.all
	  end

	  def new
	  	@course = Course.new
	  end 

	  def create
	  	@course = Course.new(course_params)
	  	if @course.save
	  			redirect_to courses_path, notice: 'course was sussessfully created!'
	  		else 
	  			render :new
	  		end 
	  end 


	  def edit 
	    @course = Course.find(params[:id])
	  end 

	  def show
	  	@course = Course.find(params[:id])
	  end 

	  def destroy
	  	@course = Course.find(params[:id])
	  	@course.destroy
	  	redirect_to root_path, notice: "Course was successfully deleted"
	  end 


private
	def course_params
		params.require(:course).permit(:title, :day_or_night)
	end



end 



