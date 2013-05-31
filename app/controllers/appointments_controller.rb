class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    if @appointment.save
      flash[:success] = "Appointment created with success!"
      redirect_to appointments_path
    else
      flash[:error] = "Appointment not created!"
      redirect_to new_appointment_path
    end
  end
end
