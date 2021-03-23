# Preview all emails at http://localhost:3000/rails/mailers/appointment_mailer
class AppointmentMailerPreview < ActionMailer::Preview
    def notification_email
        appointment = Appointment.new(user_id: 1, time: '2021-03-19 21:40:36', doctor_id: 0)

        AppointmentMailer.with(appointment: appointment).notification_apt(current_user).deliver
    end
end
