class ClinicsController < ApplicationController
  def new
    @clinic = Clinic.new
  end

  def create
    @clinic = Clinic.new(clinic_params)
    if @clinic.valid?
       @clinic.save
       redirect_to @clinic
    else
      redirect_to root_path
    end
  end

  def show
    @clinic = Clinic.find(params[:id])
  end

  def edit
    @clinic = Clinic.find(params[:id])
  end

  def update
    @clinic = Clinic.find(params[:id])
    @clinic.update(clinic_params)
    redirect_to @clinic
  end

  def index
    @clinic = Clinic.all
  end

  def delete
  end

  def clinic_params
    params.require(:clinic).permit(:name,
                                   :hours)
  end
end
