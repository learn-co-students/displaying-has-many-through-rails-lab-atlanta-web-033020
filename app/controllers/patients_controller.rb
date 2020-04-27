class PatientsController < ApplicationController
  
    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find_by(id: params[:id])
    end

    private

    def patient_params
        params.require(:patient).permit(:name, :age)
    end 
end
