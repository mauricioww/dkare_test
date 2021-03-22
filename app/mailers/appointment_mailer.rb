class AppointmentMailer < ApplicationMailer
    def notification_apt(user)
        @appointment = params[:appointment]
        @date = @appointment.time.strftime("%F %H:%M")

        mail(to: user.email, subject: 'Successful appointment scheduled!')
        puts 'Email sent...'
    end
end
