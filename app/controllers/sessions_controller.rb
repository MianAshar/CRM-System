class SessionsController < ApplicationController
  def new
  end

def create
  	user = User.find_by(email: params[:session][:email])
  	if user && user.authenticate(params[:session][:password])
  		#log user in
    log_in user
    redirect_to user
  	else
    flash.now[:danger] = 'Invalid Username/Password'
  	render 'new'
  	end
  end

  def destroy 
  end

end
