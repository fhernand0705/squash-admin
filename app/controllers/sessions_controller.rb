class SessionsController < ApplicationController
  def new
    render :layout => false

  end

  def create
   user = User.find_by(email: params[:session][:email].downcase)
   if user && user.authenticate(params[:session][:password])
     log_in user
     redirect_to user
   else
     redirect_to pages_home_path
   end
  end

  def destroy
    log_out
    redirect_to '/'
  end

end
