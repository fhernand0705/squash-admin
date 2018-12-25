class PlayersController < ApplicationController

  def new #READ create form
    @player = Player.new
  end


  def create #CREATES and STORES player
    @player = Player.new(player_params)
    if @player.valid?
       @player.save
       redirect_to @player
    else
      render 'pages/home'
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
    @player = Player.all
  end

  def delete #DELETE objects
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
