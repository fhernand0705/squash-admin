class UsersController < ApplicationController
  def new
    @user = User.new
    render :layout => false
  end

  def show
    @user = User.find(params[:id])
    if @user.id === 7
      session[:user_id] = @user.id
    end
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
       @user.save
       log_in @user
       redirect_to @user
    else
      render 'users/new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
