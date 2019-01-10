class CohortsController < ApplicationController

  def new # READ the create form
    @cohort = Cohort.new
  end

  def create # CREATES (post) new cohort
    @cohort = Cohort.new(cohort_params)
    if @cohort.valid?
       @cohort.save
       redirect_to cohorts_path
    else
       render new_cohorts_path
     end
   end

  def show # DISPLAYS cohort/player information
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

  def index # DISPLAYS all cohorts
    @cohort_all = Cohort.all
    @cohort = Cohort.new
  end

  def destroy #DELETE cohort
    @cohort = Cohort.find(params[:id])
    respond_to do |format|
      format.js
    end
    # @cohort.destroy
  end

  private #secures the below data

  def cohort_params
     params.require(:cohort).permit(:name,
                                    :start_date,
                                    :end_date,
                                    :coach_id,
                                    :clinic_id,
                                     player_ids:[])
  end
end
