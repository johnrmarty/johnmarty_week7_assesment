class CoursesController < ApplicationController
  
	  def index
	  	@course = Courses.all
	  end

	  def new
	  	@course = Course.new
	  end 

	  def create
	  	@course = Course.new(course_params)
	  	if @course.save
	  			redirect_to courses_index_path, notice: 'course was sussessfully created!'
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


private
	def user_params
		params.require(:course).permit(:title, :day_or_night)
	end



end 



