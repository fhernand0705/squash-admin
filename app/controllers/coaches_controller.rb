class CoachesController < ApplicationController
  def new # READ create form
    @coach = Coach.new
  end

  def show # DISPLAY new object
    @coach = Coach.find(params[:id])
  end

  def create # CREATE new instance of object
    @coach = Coach.new(coach_params)
    if @coach.valid?
       @coach.save
       redirect_to @coach
    else
       redirect_to root_path
    end
  end

  def edit # READ edit form
    @coach = Coach.find(params[:id])
  end

  def update # UPDATE instance of object
    @coach = Coach.find(params[:id])
    @coach.update(coach_params)
    redirect_to @coach
  end

  def index # DISPLAY all instances of objects
    @coach_all = Coach.all
    @coach = Coach.new
  end

  def delete # DELETE object
    @coach = Coach.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  private

  def coach_params
    params.require(:coach).permit(:first_name,
                                  :last_name,
                                  :age,
                                  :gender,
                                  :salary,
                                  :education,
                                  :cohort_id)
  end
end
