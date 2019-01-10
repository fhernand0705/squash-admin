class PlayersController < ApplicationController

  def new #READ create form
    @player = Player.new
  end


  def create #CREATES and STORES player
    @player = Player.new(player_params)
    if @player.valid?
       @player.save
       redirect_to players_path
    else
      render 'pages/dashboard'
    end
  end

  def show #DISPLAY created objects
    @player = Player.find(params[:id])
  end

  def edit #EDIT objects
    @player = Player.find(params[:id])
  end

  def update #UPDATE (patch) player information
    @player = Player.find(params[:id])
    @player.update(player_params)
    redirect_to @player
  end

  def index #DISPLAY all objects
    @player_all = Player.all
    @player = Player.new
  end

  def destroy #DELETE objects
    @player = Player.find(params[:id])
    respond_to do |format|
      format.js
    end
    # @player.destroy
  end

  private #makes the cohort_params private

  def player_params
    params.require(:player).permit(:first_name,
                                   :last_name,
                                   :age,
                                   :education,
                                   :gender,
                                    cohort_ids:[])
  end
end
