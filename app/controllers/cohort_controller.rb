class CohortController < ApplicationController
  def new # READ the create form
    @cohort = Cohort.new
  end

  def create # CREATES (post) new cohort
    @cohort = Cohort.find(params[:id])
    if @cohort.valid?
      @cohort.save
      redirect_to :

  def edit
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
