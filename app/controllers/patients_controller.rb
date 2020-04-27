class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
    @patient = find_patient
  end

  private

  def find_patient
    Patient.find_by(id: params[:id])
  end

end
