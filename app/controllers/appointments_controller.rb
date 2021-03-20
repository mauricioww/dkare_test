class AppointmentsController < ApplicationController

    def index
        @appointments = Appointmet.all
    end
    
    def new
        @appointment = Appointmet.new
    end

    def create
        @appointment = current_user.appointments.build()
    end

    private
        def appt_params
            params.require(:appointment).permit(:time, :user_id)
        end
end
