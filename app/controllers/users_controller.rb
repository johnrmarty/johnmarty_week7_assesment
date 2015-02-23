class UsersController < ApplicationController
  

  def index
  	@users = User.all 
  end


  def new
  	@user = User.new
  end

   def create
	@user = User.new(user_params)
	if @user.save
		flash[:notice] = "You are now a user!"
		sign_in @user
		redirect_to manufacturers_path
	else
		render :new
	end 
	end 

  def edit
  	@user = User.find(params[:id])
  end

   def show
   	  @user = User.find(params[:id])
  end

  
private
	def user_params
		params.require(:user).permit(:user_name, :password, :about )
	end 



end 
