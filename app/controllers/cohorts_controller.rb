class CohortsController < ApplicationController

  def new # READ the create form
    @cohort = Cohort.new
  end

  def create # CREATES (post) new cohort
    @cohort = Cohort.new(cohort_params)
    if @cohort.valid?
       @cohort.save
       redirect_to @cohort
    else
       render 'cohorts/new'
     end
   end

  def show # DISPLAYS cohort information
    @cohort = Cohort.find(params[:id])
  end

  def edit # READ the edit form
   @cohort = Cohort.find(params[:id])
  end

  def update # UPDATES (patch) the cohort information
    @cohort = Cohort.find(params[:id])
    @cohort.update(cohort_params)
    redirect_to @cohort
  end

  def index
  end

  def delete
  end

  private #makes the cohort_params private

  def cohort_params
     params.require(:cohort).permit(:name,
                                    :start_date,
                                    :end_date,
                                    :clinic_id,
                                    :coach_id,
                                    :player_id)
  end
end
