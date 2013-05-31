class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    if @appointment.save
      flash[:success] = "Appointment created with success!"
      redirect_to appointments_path
    end
  end
end
