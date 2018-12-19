class PlayersController < ApplicationController

  def new #READ signup form
  
  end

  def show #DISPLAY created objects

  end

  # def create #CREATES player
  #   @player = Player.new(user_params)
  #   if @player.valid?
  #      @player.save
  #      redirect_to root_path
  #   else
  #     render 'new'
  #   end
  # end

  def edit #EDIT objects
  end

  def index #DISPLAY all objects
  end

  def delete #DELETE objects
  end

  private

  # def user_params
  #   params.require(:user).permit(:first_name, :last_name, :email, :password)
  # end
end
