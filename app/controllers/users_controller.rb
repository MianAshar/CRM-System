class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		# Handle a Save
  		flash[:success] = "Welcome to CRM System"
  		redirect_to @user
  	else
  		render 'new'
  	end 
  end

  def user_params
  	params.require(:user).permit(:Fname, :LName, :Age, :CNICno ,:PhnNo, :MobileNo, :email, :Username,
  					:password, :password_confirmation)
  end

end
