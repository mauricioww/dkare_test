require "test_helper"

class AppointmentTest < ActiveSupport::TestCase
  test 'appointment is no created if there is not a set time' do
    appointment = Appointment.new(user_id: 1, doctor_id: 0)
    assert_not appointment.save
  end

  test 'appointment is no created if there is a selected doctor' do
    appointment = Appointment.new(user_id: 1,  time: '2021-03-19 21:40:36')
    assert_not appointment.save
  end
end