class DoctorsController < ApplicationController

  def show
    @doctor = find_doctor
  end

  private

  def find_doctor
    Doctor.find_by(id: params[:id])
  end

end
