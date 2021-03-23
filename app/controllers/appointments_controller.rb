class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all
    end
    
    def new
        @appointment = Appointment.new
        @doctors = Doctor.all
    end

    def show
    end

    def create
        @appointment = current_user.appointments.build(apt_params)
        if @appointment.save
            AppointmentMailer.with(appointment: @appointment).notification_apt(current_user).deliver
            redirect_to root_path, notice: 'Appoinment successfully created.'
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
        def apt_params
            params.require(:appointment).permit(:time, :user_id, :doctor_id)
        end
end
