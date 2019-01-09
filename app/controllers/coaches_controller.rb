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
       redirect_to coaches_path
    else
       redirect_to new_coaches_path
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

  def destroy # DELETE object
    @coach = Coach.find(params[:id])
    respond_to do |format|
      format.js
    end
    # @coach.destroy
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
