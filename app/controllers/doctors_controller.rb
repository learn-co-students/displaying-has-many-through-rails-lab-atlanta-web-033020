class DoctorsController < ApplicationController

    def index
        @doctors = Doctor.all
    end 

    def show
        @doctor = Doctor.find_by(id: params[:id])
    end 

    def new
        @doctor = Doctor.new
    end

    private

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end
end
