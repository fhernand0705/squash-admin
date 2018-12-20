class CoachesController < ApplicationController
  def new # DISPLAY create form
    @coach = Coach.new
  end

  def show # DISPLAYS new object
    @coach = Coach.find(params[:id])
  end

  def create
    @coach = Coach.new(coach_params)
    if @coach.valid?
       @coach.save
       redirect_to @coach
    else
       redirect_to root_path
    end
  end

  def edit
  end

  def index
  end

  def delete
  end

  private

  def coach_params
    params.require(:coach).permit(:first_name,
                                  :last_name,
                                  :age,
                                  :gender,
                                  :salary,
                                  :education)
  end
end
