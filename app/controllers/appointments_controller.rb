class AppointmentsController < ApplicationController

  def show
    @appointment = find_appointment
  end

  private

  def find_appointment
    Appointment.find_by(id: params[:id])
  end

end
